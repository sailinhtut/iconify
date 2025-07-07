import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/font_awesome/v10_4/fontawesome_v10_4.dart';

class FontAwesomeIconScreen extends StatelessWidget {
  const FontAwesomeIconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        appBar: AppBar(
          title: const Text("Font Awesome"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            buildTile(
                title: "Version 10.4.0",
                leading: const Icon(FontAwesomeIcons.fontAwesome),
                onTap: () => pushTo(context, const FontAwesomeV10Screen()))
          ],
        ));
  }

  Widget buildTile({required String title, Widget? leading, VoidCallback? onTap}) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: Text(title),
      ),
    );
  }
}
