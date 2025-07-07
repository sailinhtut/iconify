import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:heroicons/heroicons.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/hero_icons/hero_icon_meta.dart';

class HeroIconScreen extends StatefulWidget {
  const HeroIconScreen({super.key});

  @override
  State<HeroIconScreen> createState() => _HeroIconScreenState();
}

class _HeroIconScreenState extends State<HeroIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Hero Icon "),
          titleTextStyle: const TextStyle(fontSize: 15, color: Colors.black),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    searchMode = !searchMode;
                  });
                },
                icon: Icon(searchMode ? Icons.close_rounded : IconlyLight.search))
          ],
          bottom: searchMode
              ? PreferredSize(
                  preferredSize: const Size.fromHeight(40),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CupertinoTextField(
                      controller: searchController,
                      onChanged: (value) {
                        matchedIndex = heroIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => heroIconTitleMeta.indexOf(e))
                            .toList();
                        setState(() {});
                      },
                    ),
                  ),
                )
              : null,
        ),
        body: Scrollbar(
          controller: scrollController,
          interactive: true,
          thumbVisibility: true,
          child: GridView.builder(
              padding: const EdgeInsets.all(10).copyWith(bottom: 100),
              controller: scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 10),
              itemCount: searchMode ? matchedIndex.length : heroIconMeta.length,
              itemBuilder: (context, index) {
                return _HeroIconCardWidget(
                    heroIcon: searchMode ? heroIconMeta[matchedIndex[index]] : heroIconMeta[index],
                    name: searchMode ? heroIconTitleMeta[matchedIndex[index]] : heroIconTitleMeta[index],
                    packageName: "heroicons",
                    version: "0.7.0",
                    code: "HeroIcon(HeroIcons.${searchMode ? heroIconTitleMeta[matchedIndex[index]] : heroIconTitleMeta[index]})");
              }),
        ));
  }
}

class _HeroIconCardWidget extends StatelessWidget {
  const _HeroIconCardWidget(
      {Key? key, required this.heroIcon, required this.code, required this.packageName, required this.name, required this.version})
      : super(key: key);

  final HeroIcons heroIcon;
  final String name;
  final String packageName;
  final String code;
  final String version;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => pushTo(
            context,
            _HeroIconPage(
              icon: heroIcon,
              name: name,
              packageName: packageName,
              usageCode: code,
              version: version,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeroIcon(heroIcon, size: 25),
          ],
        ),
      ),
    );
  }
}

class _HeroIconPage extends StatefulWidget {
  const _HeroIconPage({super.key, required this.icon, required this.name, required this.packageName, required this.version, required this.usageCode});

  final HeroIcons icon;
  final String name;
  final String packageName;
  final String usageCode;
  final String version;

  @override
  State<_HeroIconPage> createState() => _HeroIconPageState();
}

class _HeroIconPageState extends State<_HeroIconPage> {
  Map<String, Color> availbleColors = {
    "Colors.black": Colors.black,
    "Colors.grey": Colors.grey,
    "Colors.red": Colors.red,
    "Colors.blue": Colors.blue,
    "Colors.yellow": Colors.yellow,
    "Colors.green": Colors.green,
    "Colors.amber": Colors.amber,
    "Colors.deepOrange": Colors.deepOrange,
    "Colors.purple": Colors.purple,
    "Colors.pink": Colors.pink,
    "Colors.cyan": Colors.cyan,
    "Colors.brown": Colors.brown,
    "Colors.blueGrey": Colors.blueGrey,
    "Colors.lime": Colors.lime,
    "Colors.teal": Colors.teal,
    "Colors.orange": Colors.orange,
  };
  Color selectedColor = Colors.black;

  bool isCopied = false;
  bool useColor = false;
  bool isPressed = false;

  String code = "";

  @override
  void initState() {
    super.initState();
    code = widget.usageCode;
  }

  Future<void> copyCode() async {
    await Clipboard.setData(ClipboardData(text: code));
    setState(() {
      isCopied = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTapDown: (value) {
                  setState(() {
                    isPressed = true;
                  });
                },
                onTapCancel: () {
                  setState(() {
                    isPressed = false;
                  });
                },
                onTap: () {
                  setState(() {
                    isPressed = false;

                    // create random key
                    final randomKey = availbleColors.keys.toList()[Random().nextInt(availbleColors.length)];

                    // update color
                    selectedColor = availbleColors[randomKey]!;

                    // change code
                    if (code.contains("color")) {
                      code = "${code.split(",").first},color:$randomKey)";
                    } else {
                      code = code.replaceAll(")", ",color: $randomKey)");
                    }
                  });
                },
                child: Transform.scale(scale: isPressed ? 0.9 : 1, child: HeroIcon(widget.icon, size: 100, color: selectedColor))),
            const SizedBox(height: 15),
            Text(widget.name, style: const TextStyle(fontSize: 20)),
            Text("Package Name  :  ${widget.packageName}", style: const TextStyle(fontSize: 14, color: Colors.black45)),
            Text("Package Version  :  ${widget.version}", style: const TextStyle(fontSize: 14, color: Colors.black45)),
            Card(
              color: appBarColor,
              margin: const EdgeInsets.all(15),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.all(14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Code Example",
                          style: TextStyle(fontFamily: GoogleFonts.firaCode().fontFamily),
                        ),
                        Row(
                          children: [
                            if (isCopied) const Text("Copied", style: TextStyle(fontSize: 11, color: Colors.black26)),
                            const SizedBox(width: 8),
                            GestureDetector(
                                onTap: () async => copyCode(),
                                child: Icon(
                                  isCopied ? Icons.done_all : Icons.copy_rounded,
                                  color: isCopied ? Colors.green : Colors.grey,
                                )),
                          ],
                        )
                      ],
                    ),
                    const Divider(),
                    HighlightView(
                      code,
                      language: 'dart',
                      theme: codeTheme,
                      textStyle: const TextStyle(backgroundColor: Colors.transparent),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
