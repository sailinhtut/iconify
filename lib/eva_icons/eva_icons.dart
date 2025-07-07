import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/eva_icons/eva_icons_meta.dart';
import 'package:iconify/material_icons/material_icon_meta.dart';

class EvaIconScreen extends StatefulWidget {
  const EvaIconScreen({super.key});

  @override
  State<EvaIconScreen> createState() => _EvaIconScreenState();
}

class _EvaIconScreenState extends State<EvaIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Eva Icons Version 3.1.0"),
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
                        matchedIndex = evaIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => evaIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : evaIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? evaIconMeta[matchedIndex[index]] : evaIconMeta[index],
                    name: searchMode ? evaIconTitleMeta[matchedIndex[index]] : evaIconTitleMeta[index],
                    packageName: "eva_icons_flutter",
                    version: "3.1.0",
                    code: "Icon(EvaIcons.${searchMode ? evaIconTitleMeta[matchedIndex[index]] : evaIconTitleMeta[index]})");
              }),
        ));
  }
}
