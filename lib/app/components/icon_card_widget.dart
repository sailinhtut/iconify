import 'package:flutter/material.dart';
import 'package:iconify/app/screens/icon_page_screen.dart';
import 'package:iconify/app/utils/functions.dart';

class IconCardWidget extends StatelessWidget {
  const IconCardWidget({Key? key, required this.heroIcon, required this.code, required this.packageName, required this.name,required this.version}) : super(key: key);

  final IconData heroIcon;
  final String name;
  final String packageName;
  final String code;
  final String version;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () => pushTo(
            context,
            IconPage(
              icon: heroIcon,
              name: name,
              packageName: packageName,
              usageCode: code,
              version: version,
            )),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(heroIcon, size: 25),
          ],
        ),
      ),
    );
  }
}
