import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/carbon_icons/carbon_icon.dart';
import 'package:iconify/cupertino_icons/cupertino_icons.dart';
import 'package:iconify/eva_icons/eva_icons.dart';
import 'package:iconify/fluent_icons/fluent_icons.dart';
import 'package:iconify/flutter_iconly/flutter_iconly.dart';
import 'package:iconify/font_awesome/fontawesome_screen.dart';
import 'package:iconify/hero_icons/hero_icon.dart';
import 'package:iconify/icon_plus/icon_plus_screen.dart';
import 'package:iconify/iconsax/iconsax.dart';
import 'package:iconify/ion_icons/ion_icons.dart';
import 'package:iconify/line_icons/line_icon_screen.dart';
import 'package:iconify/lucide_icons/lucide_icons.dart';
import 'package:iconify/main.dart';
import 'package:iconify/material_design/material_design.dart';
import 'package:iconify/material_icons/material_icon_screen.dart';
import 'package:iconify/phosphor_icons/phosphor_icon.dart';
import 'package:iconify/unicons/unicons.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:iconsax/iconsax.dart';
import 'package:line_icons/line_icons.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:unicons/unicons.dart';

class IconShowRoom extends StatefulWidget {
  const IconShowRoom({super.key});

  @override
  State<IconShowRoom> createState() => _IconShowRoomState();
}

class _IconShowRoomState extends State<IconShowRoom> {
  final iconRepositary = {
    "Material": {
      "route": const MaterialIconsScreen(),
      "icon": BoxIcons.bxl_android
    },
    "Cupertino": {
      "route": const CupertinoIconScreen(),
      "icon": BoxIcons.bxl_apple
    },
    "Fluent": {"route": const FluentIconScreen(), "icon": BoxIcons.bxl_windows},
    "Icon Plus": {
      "route": const IconPlusIconsScreen(),
      "icon": EvaIcons.flash_outline
    },
    "Awesome": {
      "route": const FontAwesomeIconScreen(),
      "icon": FontAwesome.font_awesome
    },
    "Line": {"route": const LineIconsScreen(), "icon": LineIcons.puzzlePiece},
    "Ion": {"route": const IonIconsScreen(), "icon": IonIcons.logo_ionitron},
    "Eva": {"route": const EvaIconScreen(), "icon": EvaIcons.grid_outline},
    "Carbon": {"route": const CarbonIconScreen(), "icon": CarbonIcons.concept},
    "Lucide": {"route": const LucideIconScreen(), "icon": LucideIcons.cog},
    "Hero": {"route": const HeroIconScreen(), "icon": IonIcons.rocket},
    "Phosphor": {
      "route": const PhosphorIconScreen(),
      "icon": PhosphorIcons.chatTeardropDotsBold
    },
    "Unicons": {
      "route": const UniconsScreen(),
      "icon": UniconsLine.location_arrow
    },
    "Iconly": {
      "route": const FlutterIconlyScreen(),
      "icon": IconlyLight.calendar
    },
    "Iconsax": {"route": const IconsaxScreen(), "icon": Iconsax.dcube},
    "MDI": {"route": const MaterialDesignScreen(), "icon": IonIcons.logo_google}
  };

  @override
  Widget build(BuildContext context) {
    dd(iconRepositary.length.toString());

    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Text(
                "Flutcon",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.poppins().fontFamily,
                  fontSize: 25,
                ),
              ),
              const Expanded(child: SizedBox()),
              if (isRealUser)const Icon(FontAwesomeIcons.crown, color: Colors.amber),
              const SizedBox(width: 20),
              const FlutterLogo(size: 30),
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
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                padding: const EdgeInsets.all(14).copyWith(bottom: 100),
                itemCount: iconRepositary.length,
                itemBuilder: (context, index) {
                  final key = iconRepositary.keys.toList()[index];
                  final value = iconRepositary[key];

                  return buildIconCard(value!["icon"] as IconData, key,
                      value["route"] as Widget);
                }),
          ),
        ]),
      ),
    );
  }

  Widget buildIconCard(IconData hero, String name, Widget screen) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.white,
      surfaceTintColor: Colors.white,
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => pushTo(context, screen),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(hero, size: 30),
            Text(name),
          ],
        ),
      ),
    );
  }
}
