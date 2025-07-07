import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/phosphor_icons/phosphor_icon_meta.dart';

class PhosphorIconScreen extends StatefulWidget {
  const PhosphorIconScreen({super.key});

  @override
  State<PhosphorIconScreen> createState() => _PhosphorIconScreenState();
}

class _PhosphorIconScreenState extends State<PhosphorIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Phosphor Icon "),
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
                        matchedIndex = phosphorIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => phosphorIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : phosphorIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? phosphorIconMeta[matchedIndex[index]] : phosphorIconMeta[index],
                    name: searchMode ? phosphorIconTitleMeta[matchedIndex[index]] : phosphorIconTitleMeta[index],
                    packageName: "phosphor_flutter",
                    version: "1.4.0",
                    code: "Icon(PhosphorIcons.${searchMode ? phosphorIconTitleMeta[matchedIndex[index]] : phosphorIconTitleMeta[index]})");
              }),
        ));
  }
}
