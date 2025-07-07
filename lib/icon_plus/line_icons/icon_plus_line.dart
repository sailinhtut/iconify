import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/icon_plus/line_icons/icon_plus_line_meta.dart';

class IconPlusLineAwesomeIconScreen extends StatefulWidget {
  const IconPlusLineAwesomeIconScreen({super.key});

  @override
  State<IconPlusLineAwesomeIconScreen> createState() => _IconPlusLineAwesomeIconScreenState();
}

class _IconPlusLineAwesomeIconScreenState extends State<IconPlusLineAwesomeIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Icon Plus - LineAwesome"),
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
                        matchedIndex = iconPlusLineAwesomeTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => iconPlusLineAwesomeTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : iconPlusLineAwesomeMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? iconPlusLineAwesomeMeta[matchedIndex[index]] : iconPlusLineAwesomeMeta[index],
                    name: searchMode ? iconPlusLineAwesomeTitleMeta[matchedIndex[index]] : iconPlusLineAwesomeTitleMeta[index],
                    packageName: "icons_plus",
                    version: "3.0.0",
                    code:
                        "Icon(LineAwesome.${searchMode ? iconPlusLineAwesomeTitleMeta[matchedIndex[index]] : iconPlusLineAwesomeTitleMeta[index]})");
              }),
        ));
  }
}
