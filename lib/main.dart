import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iconify/app/app.dart';
import 'package:iconify/app/model/icon.dart';
import 'package:iconify/app/service/admob_services.dart';
import 'package:iconify/app/utils/functions.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

late Box<DataIcon> iconBox;
String? versionCode;
bool isRealUser = false;
late SharedPreferences pref;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setSystemUIOverlay();

  await initialize();

  await AdmobServices.instance.init();

  runApp(const App());
}

Future<void> initialize() async {
  pref = await SharedPreferences.getInstance();
  isRealUser = pref.getBool("realFriend") ?? false;

  await Hive.initFlutter();

  final packageInfo = await PackageInfo.fromPlatform();
  versionCode = packageInfo.version;

  Hive.registerAdapter(DataIconAdapter());
  iconBox = await Hive.openBox("iconBox");
}
