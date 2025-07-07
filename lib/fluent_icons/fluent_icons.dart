import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/fluent_icons/fluent_icons_meta.dart';
import 'package:iconify/material_icons/material_icon_meta.dart';

class FluentIconScreen extends StatefulWidget {
  const FluentIconScreen({super.key});

  @override
  State<FluentIconScreen> createState() => _FluentIconScreenState();
}

class _FluentIconScreenState extends State<FluentIconScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Fluent Icons (Window)"),
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
                        matchedIndex = fluentIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => fluentIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : fluentIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? fluentIconMeta[matchedIndex[index]] : fluentIconMeta[index],
                    name: searchMode ? fluentIconTitleMeta[matchedIndex[index]] : fluentIconTitleMeta[index],
                    packageName: "fluentui_system_icons",
                    version: "1.1.190",
                    code: "Icon(FluentIcons.${searchMode ? fluentIconTitleMeta[matchedIndex[index]] : fluentIconTitleMeta[index]})");
              }),
        ));
  }
}
