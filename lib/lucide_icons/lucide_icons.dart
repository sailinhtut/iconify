import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/lucide_icons/lucide_icons_meta.dart';

class LucideIconScreen extends StatefulWidget {
  const LucideIconScreen({super.key});

  @override
  State<LucideIconScreen> createState() => _LucideIconScreenState();
}

class _LucideIconScreenState extends State<LucideIconScreen> {
  
    List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Lucide Icon "),
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
                        matchedIndex = lucideIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => lucideIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length :lucideIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? lucideIconMeta[matchedIndex[index]] : lucideIconMeta[index],
                    name:searchMode ? lucideIconTitleMeta[matchedIndex[index]] : lucideIconTitleMeta[index],
                    packageName: "lucide_icons",
                    version: "0.115.0",
                    code: "Icon(LucideIcons.${searchMode ? lucideIconTitleMeta[matchedIndex[index]] :lucideIconTitleMeta[index]})");
              }),
        ));
  }
}
