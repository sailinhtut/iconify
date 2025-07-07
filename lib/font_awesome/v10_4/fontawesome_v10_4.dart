import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/font_awesome/v10_4/fontawesome_v10_4_meta.dart';

class FontAwesomeV10Screen extends StatefulWidget {
  const FontAwesomeV10Screen({super.key});

  @override
  State<FontAwesomeV10Screen> createState() => _FontAwesomeV10ScreenState();
}

class _FontAwesomeV10ScreenState extends State<FontAwesomeV10Screen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Fontawesome Version 10.4.0"),
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
                        matchedIndex = fontawesomeV10TitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => fontawesomeV10TitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : fontawesomeV10Meta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? fontawesomeV10Meta[matchedIndex[index]] : fontawesomeV10Meta[index],
                    name: searchMode ? fontawesomeV10TitleMeta[matchedIndex[index]] : fontawesomeV10TitleMeta[index],
                    packageName: "font_awesome_flutter",
                    version: "10.4.0",
                    code: "Icon(FontAwesomeIcons.${searchMode ? fontawesomeV10TitleMeta[matchedIndex[index]] : fontawesomeV10TitleMeta[index]})");
              }),
        ));
  }
}
