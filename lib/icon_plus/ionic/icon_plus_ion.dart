import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/icon_plus/ionic/icon_plus_ion_meta.dart';

class IconPlusIonIconScreen extends StatefulWidget {
  const IconPlusIonIconScreen({super.key});

  @override
  State<IconPlusIonIconScreen> createState() => _IconPlusIonIconScreenState();
}

class _IconPlusIonIconScreenState extends State<IconPlusIonIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Icon Plus - Ions"),
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
                        matchedIndex = iconPlusIonIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => iconPlusIonIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : iconPlusIonIconTitleMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? iconPlusIonIconMeta[matchedIndex[index]] : iconPlusIonIconMeta[index],
                    name: searchMode ? iconPlusIonIconTitleMeta[matchedIndex[index]] : iconPlusIonIconTitleMeta[index],
                    packageName: "icons_plus",
                    version: "3.0.0",
                    code: "Icon(IonIcons.${searchMode ? iconPlusIonIconTitleMeta[matchedIndex[index]] : iconPlusIonIconTitleMeta[index]})");
              }),
        ));
  }
}
