import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:iconify/app/components/icon_card_widget.dart';
import 'package:iconify/material_design/material_design_meta.dart';

class MaterialDesignScreen extends StatefulWidget {
  const MaterialDesignScreen({super.key});

  @override
  State<MaterialDesignScreen> createState() => _MaterialDesignScreenState();
}

class _MaterialDesignScreenState extends State<MaterialDesignScreen> {
  List<int> matchedIndex = [];

  bool searchMode = false;

  TextEditingController searchController = TextEditingController();

  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          title: const Text("Material Design Icon"),
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
                        matchedIndex = materailDesignTitleMeta
                            .where((element) => element.toLowerCase().contains(value.toLowerCase()))
                            .map((e) => materailDesignTitleMeta.indexOf(e))
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
              itemCount: searchMode ? matchedIndex.length : materialDesignMeta.length,
              itemBuilder: (context, index) {
                return IconCardWidget(
                    heroIcon: searchMode ? materialDesignMeta[matchedIndex[index]] : materialDesignMeta[index],
                    name: searchMode ? materailDesignTitleMeta[matchedIndex[index]] : materailDesignTitleMeta[index],
                    packageName: "material_design_icons_flutter",
                    version: "6.0.7096",
                    code: "Icon(MdiIcons.${searchMode ? materailDesignTitleMeta[matchedIndex[index]] : materailDesignTitleMeta[index]})");
              }),
        ));
  }
}
