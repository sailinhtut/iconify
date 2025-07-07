import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/cupertino_icons/cupertino_icons_meta.dart';

class CupertinoIconScreen extends StatefulWidget {
  const CupertinoIconScreen({super.key});

  @override
  State<CupertinoIconScreen> createState() => CupertinoIconScreenState();
}

class CupertinoIconScreenState extends State<CupertinoIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Cupertino Icons (IOS)"),
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
                        matchedIndex = cupertinoIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => cupertinoIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : cupertinoIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? cupertinoIconMeta[matchedIndex[index]] : cupertinoIconMeta[index],
                    name: searchMode ? cupertinoIconTitleMeta[matchedIndex[index]] : cupertinoIconTitleMeta[index],
                    packageName: "Flutter Builtin",
                    version: "Flutter Version 3.7.3",
                    code: "Icon(CupertinoIcons.${searchMode ? cupertinoIconTitleMeta[matchedIndex[index]] : cupertinoIconTitleMeta[index]})");
              }),
        ));
  }
}
