import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify/app/model/icon.dart';
import 'package:iconify/app/screens/icon_page_screen.dart';
import 'package:iconify/app/service/database_service.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/main.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  bool isDragging = false;
  bool isDragCompleted = false;
  bool isEdit = false;

  ScrollController scrollController = ScrollController();

  Set<dynamic> editKeys = {};

  void handleDelete(int key) {
    if (editKeys.contains(key)) {
      editKeys.remove(key);
    } else {
      editKeys.add(key);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 20),
                Text(
                  "Bookmark",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 20,
                  ),
                ),
                const Expanded(child: SizedBox()),
                if (isEdit) buildDeleteButton(),
                const SizedBox(width: 20),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        isEdit = !isEdit;
                        if (!isEdit) {
                          editKeys.clear();
                        }
                      });
                    },
                    child: Icon(
                        isEdit ? IconlyLight.closeSquare : IconlyLight.edit)),
                const SizedBox(width: 20),
                const Icon(IconlyLight.heart),
                const SizedBox(width: 20),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(
              indent: 20,
              endIndent: 50,
              height: 1,
            ),
            Expanded(
              child: ValueListenableBuilder(
                valueListenable: FlutconDB.getAllIcons(),
                builder: (context, box, child) {
                  final keys = box.keys.toList();
                  return GridView.builder(
                      padding: const EdgeInsets.all(14),
                      controller: scrollController,
                      itemCount: keys.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 6),
                      itemBuilder: (context, index) {
                        final key = keys[index];
                        final icon = box.get(key);
                        return GestureDetector(
                            onTap: !isEdit ? null : () => handleDelete(key),
                            child: _BookmarkIconCard(
                              dataIcon: icon!,
                              isEditMode: isEdit,
                              isSelected: editKeys.contains(key),
                            ));
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  buildDeleteButton() {
    return GestureDetector(
        onTap: () {
          showConfirmDialog(context,
              title: "Confirmation",
              content: "Are you sure to delete those icons ?",
              buttonColor: Colors.black,
              buttonText: "Confirm", onConfirm: () {
            setState(() {
              iconBox.deleteAll(editKeys);
              isEdit = false;
              editKeys.clear();
            });
            Navigator.pop(context);
          });
        },
        child: Icon(IconlyLight.delete,
            color: editKeys.isNotEmpty ? Colors.redAccent : null));
  }
}

class _BookmarkIconCard extends StatelessWidget {
  const _BookmarkIconCard(
      {super.key,
      required this.dataIcon,
      required this.isEditMode,
      required this.isSelected});

  final DataIcon dataIcon;
  final bool isSelected;
  final bool isEditMode;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Colors.black : null,
      elevation: isSelected ? 5 : null,
      shadowColor: isSelected ? Colors.lightBlue : null,
      surfaceTintColor: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashFactory: InkSparkle.splashFactory,
        onTap: isEditMode
            ? null
            : () {
                pushTo(
                    context,
                    IconPage(
                        icon: generateIconData(dataIcon),
                        name: dataIcon.name ?? "name",
                        packageName: dataIcon.package ?? "package",
                        version: dataIcon.version ?? "version",
                        usageCode: dataIcon.code ?? ""));
              },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Icon(
            generateIconData(dataIcon),
            color: isSelected ? Colors.lightBlue : null,
          ),
        ),
      ),
    );
  }
}
