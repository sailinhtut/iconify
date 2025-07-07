import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/icon_plus/eva_icons/icon_plus_eva_meta.dart';

class IconPlusEvaScreen extends StatefulWidget {
  const IconPlusEvaScreen({super.key});

  @override
  State<IconPlusEvaScreen> createState() => _IconPlusEvaScreenState();
}

class _IconPlusEvaScreenState extends State<IconPlusEvaScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Icon Plus - EvaIcons"),
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
                        matchedIndex = iconPlusEvaTitleMata
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => iconPlusEvaTitleMata.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : iconPlusEvaIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? iconPlusEvaIconMeta[matchedIndex[index]] : iconPlusEvaIconMeta[index],
                    name: searchMode ? iconPlusEvaTitleMata[matchedIndex[index]] : iconPlusEvaTitleMata[index],
                    packageName: "icons_plus",
                    version: "3.0.0",
                    code: "Icon(EvaIcons.${searchMode ? iconPlusEvaTitleMata[matchedIndex[index]] : iconPlusEvaTitleMata[index]})");
              }),
        ));
  }
}
