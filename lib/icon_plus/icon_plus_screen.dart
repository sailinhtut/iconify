import 'package:flutter/material.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/icon_plus/bootstrap/icon_plus_bootstrap.dart';
import 'package:iconify/icon_plus/box_icons/icon_plus_boxs.dart';
import 'package:iconify/icon_plus/eva_icons/icon_plus_eva.dart';
import 'package:iconify/icon_plus/flags/icon_plus_flag.dart';
import 'package:iconify/icon_plus/font_awesome_ip/icon_plus_fa.dart';
import 'package:iconify/icon_plus/ionic/icon_plus_ion.dart';
import 'package:iconify/icon_plus/line_icons/icon_plus_line.dart';
import 'package:iconify/icon_plus/logo/icon_plus_logo.dart';
import 'package:iconify/icon_plus/pixel_art/icon_plus_pixelart.dart';
import 'package:icons_plus/icons_plus.dart';

class IconPlusIconsScreen extends StatelessWidget {
  const IconPlusIconsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBarColor,
        appBar: AppBar(
          title: const Text("Icon Plus"),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          children: [
            buildTile(
                title: "Bootstrap",
                leading: const Icon(FontAwesome.bootstrap, size: 20, color: Colors.deepPurple),
                onTap: () => pushTo(context, const IconPlusBootstrapScreen())),
            buildTile(
              title: "BoxIcons",
              leading: const Icon(BoxIcons.bx_cube),
              onTap: () => pushTo(context, const IconPlusBoxIconsScreen()),
            ),
            buildTile(
              title: "EvaIcons",
              leading: const Icon(EvaIcons.grid, color: Colors.amber),
              onTap: () => pushTo(context, const IconPlusEvaScreen()),
            ),
            buildTile(
                title: "Font Awesome (6.3)",
                leading: const Icon(FontAwesome.font_awesome, color: Colors.blue),
                onTap: () => pushTo(context, const IconPlusFontAwesomeScreen())),
            buildTile(
                title: "LineAwesome",
                leading: const Icon(LineAwesome.sliders_h_solid, color: Colors.black),
                onTap: () => pushTo(context, const IconPlusLineAwesomeIconScreen())),
            buildTile(
                title: "IonIcon",
                leading: const Icon(IonIcons.copy, color: Colors.indigo),
                onTap: () => pushTo(context, const IconPlusIonIconScreen())),
            buildTile(
                title: "PixelArt",
                leading: const Icon(PixelArtIcons.bullseye_arrow, color: Colors.black),
                onTap: () => pushTo(context, const IconPlusPixelArtIconScreen())),
            buildTile(
                title: "Logo",
                leading: const Icon(Bootstrap.patch_check, color: Colors.pink),
                onTap: () => pushTo(context, const IconPlusLogoScreen())),
            buildTile(
                title: "Country Flags",
                leading: const Icon(Bootstrap.globe2, color: Colors.deepOrange),
                onTap: () => pushTo(context, const IconPlusFlagScreen())),
          ],
        ));
  }

  Widget buildTile({required String title, Widget? leading, VoidCallback? onTap}) {
    return Card(
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: defaultBorderRadius),
      child: ListTile(
        onTap: onTap,
        leading: leading,
        title: Text(title),
      ),
    );
  }
}
