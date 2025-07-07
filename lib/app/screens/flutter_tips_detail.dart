import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:url_launcher/url_launcher_string.dart';

class FlutterTipsDetailScreen extends StatelessWidget {
  const FlutterTipsDetailScreen(
      {super.key, required this.title, required this.content});

  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: SingleChildScrollView(
            padding: const EdgeInsets.all(14).copyWith(bottom: 100),
            child: HtmlWidget(
              content,
              textStyle: const TextStyle(fontSize: 13),
              onTapUrl: (url) {
                launchUrlString(url, mode: LaunchMode.externalApplication);
                return true;
              },
            )));
  }
}
