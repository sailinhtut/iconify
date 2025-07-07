import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/ion_icons/ion_icons_meta.dart';
import 'package:iconify/material_icons/material_icon_meta.dart';

class IonIconsScreen extends StatefulWidget {
  const IonIconsScreen({super.key});

  @override
  State<IonIconsScreen> createState() => _IonIconsScreenState();
}

class _IonIconsScreenState extends State<IonIconsScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Ion Icons"),
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
                        matchedIndex = ionIconTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => ionIconTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : ionIconMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? ionIconMeta[matchedIndex[index]] : ionIconMeta[index],
                    name: searchMode ? ionIconTitleMeta[matchedIndex[index]] : ionIconTitleMeta[index],
                    packageName: "ionicons",
                    version: "0.2.2",
                    code: "Icon(Ionicons.${searchMode ? ionIconTitleMeta[matchedIndex[index]] : ionIconTitleMeta[index]})");
              }),
        ));
  }
}
