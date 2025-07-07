import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:iconify/app/screens/icon_bookmark.dart';
import 'package:iconify/app/screens/icon_showroom_screen.dart';
import 'package:iconify/app/screens/setting_screen.dart';
import 'package:iconify/app/service/admob_services.dart';
import 'package:iconify/app/utils/themes.dart';
import 'package:iconify/main.dart';
import 'package:icons_plus/icons_plus.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final pages = const [IconShowRoom(), BookmarkScreen(), SettingScreen()];

  int currentPageIndex = 0;

  AppOpenAd? appOpenAd;
  BannerAd? bannerAd;

  @override
  void initState() {
    super.initState();
    advertiseInit();
  }

  void advertiseInit() async {
    bannerAd = AdmobServices.instance.loadBanner(AdSize.fullBanner);
    await bannerAd!.load();

    await AdmobServices.instance
        .loadAppOpen(onSuccessfullLoaded: (ad) => appOpenAd = ad);
    AdmobServices.instance.appOpenAddListener(appOpenAd);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: currentPageIndex,
              children: pages,
            ),
          ),
          AdmobServices.instance
              .readyMadeBannerWidget(bannerAd, AdSize.fullBanner)
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedFontSize: 0,
        selectedFontSize: 0,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: "",
            // backgroundColor: Colors.white,
            icon: Icon(
              IconlyLight.buy,
            ),
            activeIcon: Icon(
              IconlyBold.buy,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            // backgroundColor: Colors.white,
            icon: Icon(
              IconlyLight.heart,
            ),
            activeIcon: Icon(
              IconlyBold.heart,
            ),
          ),
          BottomNavigationBarItem(
            label: "",
            // backgroundColor: Colors.white,
            icon: Icon(
              IconlyLight.setting,
            ),
            activeIcon: Icon(
              IconlyBold.setting,
            ),
          ),
        ],
      ),
    );
  }

  // Widget buildBottomBar() {
  //   return BottomNavigationBarItem(
  //     color: const Color.fromRGBO(255, 255, 255, 1),
  //     height: 90,
  //     elevation: 0,
  //     child: Container(
  //       color: Colors.red,
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: [
  //           IconButton(
  //               onPressed: () {
  //                 setState(() {
  //                   currentPageIndex = 0;
  //                 });
  //               },
  //               icon: Icon(
  //                   currentPageIndex == 0 ? IconlyBold.buy : IconlyLight.buy)),
  //           IconButton(
  //               onPressed: () {
  //                 setState(() {
  //                   currentPageIndex = 1;
  //                 });
  //               },
  //               icon: Icon(currentPageIndex == 1
  //                   ? IconlyBold.heart
  //                   : IconlyLight.heart)),
  //           IconButton(
  //               onPressed: () {
  //                 setState(() {
  //                   currentPageIndex = 2;
  //                 });
  //               },
  //               icon: Icon(currentPageIndex == 2
  //                   ? IconlyBold.setting
  //                   : IconlyLight.setting)),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
