import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/icon_plus/flags/flag_meta.dart';
import 'package:iconify/icon_plus/logo/icon_plus_logo_meta.dart';
import 'package:icons_plus/icons_plus.dart';

class IconPlusLogoScreen extends StatefulWidget {
  const IconPlusLogoScreen({super.key});

  @override
  State<IconPlusLogoScreen> createState() => _IconPlusLogoScreenState();
}

class _IconPlusLogoScreenState extends State<IconPlusLogoScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Icon Plus - Logo"),
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
                        matchedIndex = iconPlusLogoTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => iconPlusLogoTitleMeta.indexOf(e))
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
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
              itemCount: searchMode ? matchedIndex.length : iconPlusLogoMeta.length,
              itemBuilder: (context, index) {
                return _LogoCard(
                  flagAssetPath: searchMode ? iconPlusLogoMeta[matchedIndex[index]] : iconPlusLogoMeta[index],
                  logoName: searchMode ? iconPlusLogoTitleMeta[matchedIndex[index]] : iconPlusLogoTitleMeta[index],
                  packageName: "icons_plus",
                  version: "3.0.0",
                  usageCode: "Logo(Logos.${searchMode ? iconPlusLogoTitleMeta[matchedIndex[index]] : iconPlusLogoTitleMeta[index]})",
                );
              }),
        ));
  }
}

class _LogoCard extends StatelessWidget {
  const _LogoCard(
      {super.key, required this.flagAssetPath, required this.usageCode, required this.logoName, required this.packageName, required this.version});

  final String flagAssetPath;
  final String usageCode;
  final String packageName;
  final String version;
  final String logoName;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () => pushTo(
          context, _LogoScreen(flagAssetPath: flagAssetPath, usageCode: usageCode, packageName: packageName, version: version, name: logoName)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [Logo(flagAssetPath)],
      ),
    );
  }
}

class _LogoScreen extends StatefulWidget {
  const _LogoScreen(
      {super.key, required this.flagAssetPath, required this.usageCode, required this.packageName, required this.version, required this.name});

  final String flagAssetPath;
  final String usageCode;
  final String packageName;
  final String version;
  final String name;

  @override
  State<_LogoScreen> createState() => __LogoScreenState();
}

class __LogoScreenState extends State<_LogoScreen> {
  bool isCopied = false;

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
            Logo(widget.flagAssetPath, size: 100),
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
