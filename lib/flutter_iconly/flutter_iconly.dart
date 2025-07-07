import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/flutter_iconly/flutter_iconly__bold_meta.dart';
import 'package:iconify/flutter_iconly/flutter_iconly_broken_meta.dart';
import 'package:iconify/flutter_iconly/flutter_iconly_light_meta.dart';
import 'package:unicons/unicons.dart';

class FlutterIconlyScreen extends StatelessWidget {
  const FlutterIconlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        appBar: AppBar(
          title: const Text("Flutter Iconly"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            buildTile(
                title: "Iconly Light",
                leading: const Icon(UniconsLine.line, size: 20, color: Colors.deepPurple),
                onTap: () => pushTo(context, _FlutterIconlyLightScreen())),
            buildTile(
              title: "Iconly Bold",
              leading: const Icon(UniconsSolid.airplay),
              onTap: () => pushTo(context, _FlutterIconlyBoldScreen()),
            ),
            buildTile(
              title: "Iconly Broken",
              leading: const Icon(UniconsSolid.airplay),
              onTap: () => pushTo(context, _FlutterIconlyBroken()),
            ),
          ],
        ));
  }

  Widget buildTile({required String title, Widget? leading, VoidCallback? onTap}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: Text(title),
      ),
    );
  }
}

class _FlutterIconlyLightScreen extends StatefulWidget {
  const _FlutterIconlyLightScreen({super.key});

  @override
  State<_FlutterIconlyLightScreen> createState() => _FlutterIconlyLightScreenState();
}

class _FlutterIconlyLightScreenState extends State<_FlutterIconlyLightScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Iconly Light"),
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
                        matchedIndex = flutterIconlyLightTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => flutterIconlyLightTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : flutterIconlyLightMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? flutterIconlyLightMeta[matchedIndex[index]] : flutterIconlyLightMeta[index],
                    name: searchMode ? flutterIconlyLightTitleMeta[matchedIndex[index]] : flutterIconlyLightTitleMeta[index],
                    packageName: "flutter_iconly",
                    version: "1.0.2",
                    code: "Icon(IconlyLight.${searchMode ? flutterIconlyLightTitleMeta[matchedIndex[index]] : flutterIconlyLightTitleMeta[index]})");
              }),
        ));
  }
}

class _FlutterIconlyBoldScreen extends StatefulWidget {
  const _FlutterIconlyBoldScreen({super.key});

  @override
  State<_FlutterIconlyBoldScreen> createState() => _FlutterIconlyBoldScreenState();
}

class _FlutterIconlyBoldScreenState extends State<_FlutterIconlyBoldScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Iconly Bold"),
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
                        matchedIndex = flutterIconlyBoldTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => flutterIconlyBoldTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : flutterIconlyBoldMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? flutterIconlyBoldMeta[matchedIndex[index]] : flutterIconlyBoldMeta[index],
                    name: searchMode ? flutterIconlyBoldTitleMeta[matchedIndex[index]] : flutterIconlyBoldTitleMeta[index],
                    packageName: "flutter_iconly",
                    version: "1.0.2",
                    code: "Icon(IconlyBold.${searchMode ? flutterIconlyBoldTitleMeta[matchedIndex[index]] : flutterIconlyBoldTitleMeta[index]})");
              }),
        ));
  }
}

class _FlutterIconlyBroken extends StatefulWidget {
  const _FlutterIconlyBroken({super.key});

  @override
  State<_FlutterIconlyBroken> createState() => _FlutterIconlyBrokenState();
}

class _FlutterIconlyBrokenState extends State<_FlutterIconlyBroken> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Iconly Broken"),
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
                        matchedIndex = flutterIconlyBoldTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => flutterIconlyBoldTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : flutterIconlyBrokenMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? flutterIconlyBrokenMeta[matchedIndex[index]] : flutterIconlyBrokenMeta[index],
                    name: searchMode ? flutterIconlyBrokenTitleMeta[matchedIndex[index]] : flutterIconlyBrokenTitleMeta[index],
                    packageName: "flutter_iconly",
                    version: "1.0.2",
                    code:
                        "Icon(IconlyBroken.${searchMode ? flutterIconlyBrokenTitleMeta[matchedIndex[index]] : flutterIconlyBrokenTitleMeta[index]})");
              }),
        ));
  }
}
