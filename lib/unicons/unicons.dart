import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/unicons/unicons_line_meta.dart';
import 'package:iconify/unicons/unicons_solid_meta.dart';
import 'package:unicons/unicons.dart';

class UniconsScreen extends StatelessWidget {
  const UniconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        appBar: AppBar(
          title: const Text("Unicons"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            buildTile(
                title: "Unicons Line",
                leading: const Icon(UniconsLine.line, size: 20, color: Colors.deepPurple),
                onTap: () => pushTo(context, const _UniconsLineScreen())),
            buildTile(
              title: "Unicons Solid",
              leading: const Icon(UniconsSolid.airplay),
              onTap: () => pushTo(context, const _UniconSolidScreen()),
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

class _UniconsLineScreen extends StatefulWidget {
  const _UniconsLineScreen({super.key});

  @override
  State<_UniconsLineScreen> createState() => __UniconsLineScreenState();
}

class __UniconsLineScreenState extends State<_UniconsLineScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Unicons Line"),
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
                        matchedIndex = uniconsLineTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => uniconsLineTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : uniconsLineMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? uniconsLineMeta[matchedIndex[index]] : uniconsLineMeta[index],
                    name: searchMode ? uniconsLineTitleMeta[matchedIndex[index]] : uniconsLineTitleMeta[index],
                    packageName: "unicons",
                    version: "2.1.0",
                    code: "Icon(UniconsLine.${searchMode ? uniconsLineTitleMeta[matchedIndex[index]] : uniconsLineTitleMeta[index]})");
              }),
        ));
  }
}

class _UniconSolidScreen extends StatefulWidget {
  const _UniconSolidScreen({super.key});

  @override
  State<_UniconSolidScreen> createState() => __UniconSolidScreenState();
}

class __UniconSolidScreenState extends State<_UniconSolidScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Unicons Solid"),
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
                        matchedIndex = uniconsSolidTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => uniconsSolidTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : uniconsSolidMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? uniconsSolidMeta[matchedIndex[index]] : uniconsSolidMeta[index],
                    name: searchMode ? uniconsSolidTitleMeta[matchedIndex[index]] : uniconsSolidTitleMeta[index],
                    packageName: "unicons",
                    version: "2.1.0",
                    code: "Icon(UniconsSolid.${searchMode ? uniconsSolidTitleMeta[matchedIndex[index]] : uniconsSolidTitleMeta[index]})");
              }),
        ));
  }
}
