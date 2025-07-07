import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void dd(String message) => print("Flutcons ---> $message");

void setSystemUIOverlay() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemStatusBarContrastEnforced: false,
    statusBarIconBrightness: Brightness.dark,
    systemNavigationBarIconBrightness: Brightness.dark,
    systemNavigationBarColor: Colors.transparent,
    systemNavigationBarContrastEnforced: false,
  ));

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
}

Future<T?> pushTo<T>(BuildContext context, Widget newRoutePage) async =>
    await Navigator.push<T>(
        context, MaterialPageRoute(builder: (context) => newRoutePage));

Future<void> goBack<T extends Object>(BuildContext context,
        [T? result]) async =>
    Navigator.pop(context, result);

Future<T?> pushSlideUp<T>(BuildContext context, Widget newRoutePage,
    {Duration? duration}) async {
  return await Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => newRoutePage,
        transitionDuration: duration ?? const Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 1),
              end: Offset.zero,
            ).animate(animation),
            child: child,
          );
        },
      ));
}

Future<T?> pushScaleUp<T>(BuildContext context, Widget newRoutePage,
    {Duration? duration}) async {
  return await Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => newRoutePage,
        transitionDuration: duration ?? const Duration(milliseconds: 400),
        reverseTransitionDuration:
            duration ?? const Duration(milliseconds: 400),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return ScaleTransition(
              scale: animation, alignment: Alignment.center, child: child);
        },
      ));
}
// Route Snippet End

// String Utils
String capitalizer(String inputValue) {
  final firstLetter = inputValue.substring(0, 1);
  final letter =
      inputValue.replaceFirst(firstLetter, firstLetter.toUpperCase());
  return letter;
}

String uniqueID({int length = 28}) {
  var characters =
      "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
  var randomString = "";
  for (var i = 1; i < length; i++) {
    randomString += characters[Random().nextInt(characters.length)];
  }
  return randomString;
}

// Confirm Dialog
Future<T> showConfirmDialog<T>(BuildContext context,
    {required String title,
    required String content,
    required String buttonText,
    String? cancelText,
    required VoidCallback onConfirm,
    Color? buttonColor}) async {
  return await showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(title),
            surfaceTintColor: Colors.transparent,
            titleTextStyle: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
            content: Text(content),
            scrollable: true,
            // titlePadding: const EdgeInsets.all(10).copyWith(bottom: 0),
            // contentPadding: const EdgeInsets.all(25).copyWith(bottom: 0),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            actions: [
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor:
                          buttonColor ?? Theme.of(context).primaryColor),
                  onPressed: () {
                    Navigator.pop(context, false);
                  },
                  child: Text(cancelText ?? "Cancel")),
              TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor:
                          buttonColor ?? Theme.of(context).primaryColor),
                  onPressed: onConfirm,
                  child: Text(buttonText)),
            ],
          ));
}
