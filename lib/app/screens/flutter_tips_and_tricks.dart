import 'package:flutter/material.dart';
import 'package:iconify/app/screens/flutter_tips_detail.dart';
import 'package:iconify/app/utils/functions.dart';
import './tips.dart';

class FlutterTipsAndTricksScreen extends StatefulWidget {
  const FlutterTipsAndTricksScreen({super.key});

  @override
  State<FlutterTipsAndTricksScreen> createState() =>
      FlutterTipsAndTricksScreenState();
}

class FlutterTipsAndTricksScreenState
    extends State<FlutterTipsAndTricksScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tips & Tricks"),
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(10).copyWith(bottom: 100),
          child: Theme(
            data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
            child: Column(
                children: tips
                    .map((key, value) =>
                        MapEntry(key, TipTile(title: key, content: value)))
                    .values
                    .toList()),
          ),
        ));
  }
}

class TipTile extends StatelessWidget {
  final String title;
  final String content;

  const TipTile({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.transparent,
      child: ListTile(
        onTap: () => pushTo(
            context, FlutterTipsDetailScreen(title: title, content: content)),
        title: Text(title),
        trailing: const Icon(Icons.speed),
      ),
    );
  }
}
