import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:iconify/app/screens/flutter_tips_and_tricks.dart';
import 'package:iconify/app/service/admob_services.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:iconify/main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:launch_review/launch_review.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  RewardedAd? rewardAd;
  @override
  void initState() {
    super.initState();
    initAds();
  }

  initAds() async {
    AdmobServices.instance
        .loadRewarded(onSuccessfullLoaded: (ad) => rewardAd = ad);
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
                  "Settings",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.poppins().fontFamily,
                    fontSize: 20,
                  ),
                ),
                const Expanded(child: SizedBox()),
                const _InfoWidget(),
                const SizedBox(width: 20),
                const Icon(IconlyLight.setting),
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
                child: ListView(
              padding: const EdgeInsets.all(14),
              children: [
                _SettingTile(
                    leading: const Icon(Iconsax.flash, color: Colors.orange),
                    title: "Flutter Tips and Tricks",
                    onTap: () {
                      // action
                      pushTo(context, FlutterTipsAndTricksScreen());
                    }),
                _SettingTile(
                    leading: const Icon(IconlyLight.paper, color: Colors.black),
                    title: "Pravicy Policy",
                    onTap: () {
                      launchUrlString(pravicyLink,
                          mode: LaunchMode.externalApplication);
                    }),
                _SettingTile(
                    leading:
                        const Icon(IconlyLight.document, color: Colors.black),
                    title: "Term and Condition",
                    onTap: () {
                      launchUrlString(termsConditionLink,
                          mode: LaunchMode.externalApplication);
                    }),
                _SettingTile(
                    leading:
                        const Icon(IconlyLight.category, color: Colors.black),
                    title: "More Apps",
                    onTap: () {
                      launchUrlString(brighterLifePage,
                          mode: LaunchMode.externalApplication);
                    }),
                _SettingTile(
                    leading: const Icon(LineIcons.share, color: Colors.black),
                    title: "Share Friends",
                    onTap: () {
                      Share.share(shareText,
                          subject:
                              "Flutcon - Flutter Icon Preview Application");
                    }),
                _SettingTile(
                    leading:
                        const Icon(IconlyLight.ticketStar, color: Colors.black),
                    title: "Rate Us",
                    onTap: () async {
                      await LaunchReview.launch(
                          writeReview: true,
                          androidAppId: "com.brighterlife.flutcon",
                          iOSAppId: "");
                    }),
                _SettingTile(
                    leading:
                        const Icon(Iconsax.message_text_1, color: Colors.black),
                    title: "Feedback Flutcon",
                    onTap: () {
                      const String uri =
                          "mailto:sailinhtut76062@gmail.com?subject=Feedback to Flutcon&body=Hello Flutcon,I have a suggestion for the sake of your app in good way...";
                      launchUrlString(uri,
                          mode: LaunchMode.externalApplication);
                    }),
                _SettingTile(
                    leading: const Icon(Iconsax.heart, color: Colors.redAccent),
                    title: "Donate Us",
                    onTap: () {
                      showConfirmDialog(context,
                          title: "Request To Show Advertise 🙏",
                          content:
                              "Can you help us to support more better way ?",
                          buttonText: "I am okay and watch",
                          cancelText: "Cancel",
                          buttonColor: Colors.black, onConfirm: () {
                        Navigator.pop(context);
                        AdmobServices.instance.showRewarded(rewardAd,
                            onFinished: () {
                          showConfirmDialog(context,
                              title: "Thank You ❤",
                              content:
                                  "We appreciated your support that help us a lot ...",
                              buttonColor: Colors.black,
                              buttonText: "Okay", onConfirm: () {
                            Navigator.pop(context);
                          });
                          pref.setBool("realFriend", true);
                        });
                      });
                    }),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  const _SettingTile(
      {super.key, required this.leading, required this.title, this.onTap});

  final Widget leading;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      child: ListTile(leading: leading, title: Text(title), onTap: onTap),
    );
  }
}

class _InfoWidget extends StatelessWidget {
  const _InfoWidget({super.key});

  final des =
      "Flutcon is icon preview application for flutter developers.It was developed to help developer to easy pick beautiful icon their applications.Have a easy great day ❤.";

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              barrierColor: Colors.transparent,
              builder: (context) {
                return Dialog(
                  backgroundColor: Colors.transparent,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black12),
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.5),
                          )
                        ]),
                    padding: const EdgeInsets.all(14),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 5),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                "Flutcon",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                              Icon(Iconsax.search_favorite)
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            des,
                            maxLines: 7,
                            textAlign: TextAlign.start,
                            softWrap: true,
                          ),
                          Expanded(child: SizedBox()),
                          Center(
                              child: Text(
                            "Version $versionCode",
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ))
                        ]),
                  ),
                );
              });
        },
        child: const Icon(Iconsax.info_circle));
  }
}
