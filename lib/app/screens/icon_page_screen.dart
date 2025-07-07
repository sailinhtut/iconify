import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:iconify/app/model/icon.dart';
import 'package:iconify/app/service/admob_services.dart';
import 'package:iconify/app/service/database_service.dart';
import 'package:iconify/app/utils/constants.dart';
import 'package:iconify/app/utils/themes.dart';

class IconPage extends StatefulWidget {
  const IconPage(
      {super.key,
      required this.icon,
      required this.name,
      required this.packageName,
      required this.version,
      required this.usageCode});

  final IconData icon;
  final String name;
  final String packageName;
  final String usageCode;
  final String version;

  @override
  State<IconPage> createState() => _IconPageState();
}

class _IconPageState extends State<IconPage>
    with SingleTickerProviderStateMixin {
  Map<String, Color> availbleColors = {
    "Colors.black": Colors.black,
    "Colors.grey": Colors.grey,
    "Colors.red": Colors.red,
    "Colors.blue": Colors.blue,
    "Colors.yellow": Colors.yellow,
    "Colors.green": Colors.green,
    "Colors.amber": Colors.amber,
    "Colors.deepOrange": Colors.deepOrange,
    "Colors.purple": Colors.purple,
    "Colors.pink": Colors.pink,
    "Colors.cyan": Colors.cyan,
    "Colors.brown": Colors.brown,
    "Colors.blueGrey": Colors.blueGrey,
    "Colors.lime": Colors.lime,
    "Colors.teal": Colors.teal,
    "Colors.orange": Colors.orange,
  };
  Color selectedColor = Colors.black;

  bool isCopied = false;
  bool useColor = false;
  bool isPressed = false;
  bool isDragging = false;
  bool isDragCompleted = false;

  String code = "";

  late DataIcon data;

  late AnimationController animationControl;
  late Animation<double> sizeAnimation;
  late Animation<double> leftRotate;
  late Animation<double> rightRotate;

  InterstitialAd? interAd;

  @override
  void initState() {
    super.initState();
    code = widget.usageCode;

    data = DataIcon(
        codePoint: widget.icon.codePoint,
        fontFamily: widget.icon.fontFamily,
        fontPackage: widget.icon.fontPackage,
        name: widget.name,
        package: widget.packageName,
        version: widget.version,
        code: code);

    animationControl = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    sizeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        parent: animationControl, curve: const Interval(0.0, 0.4)));
    leftRotate = Tween<double>(begin: 0.0, end: 0.5).animate(CurvedAnimation(
        parent: animationControl, curve: const Interval(0.4, 0.7)));
    rightRotate = Tween<double>(begin: 0.0, end: -1).animate(CurvedAnimation(
        parent: animationControl, curve: const Interval(0.7, 1)));

    animationControl.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationControl.reverse();
      }
    });

    initAds();
  }

  @override
  void dispose() {
    AdmobServices.instance.showInterstistial(interAd);
    super.dispose();
  }

  void initAds() {
    AdmobServices.instance
        .loadInterstistial(onSuccessfullLoaded: (ad) => interAd = ad);
  }

  Future<void> copyCode() async {
    await Clipboard.setData(ClipboardData(text: code));
    setState(() {
      isCopied = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Draggable(
                  data: data,
                  feedback: Icon(widget.icon, size: 100, color: selectedColor),
                  onDragStarted: () {
                    setState(() {
                      isDragging = true;
                    });
                  },
                  onDragCompleted: () {
                    setState(() {
                      isDragging = false;
                    });
                    animationControl.forward();
                  },
                  onDraggableCanceled: (velocity, offset) {
                    setState(() {
                      isDragging = false;
                    });
                  },
                  child: isDragging
                      ? const SizedBox(height: 100)
                      : GestureDetector(
                          onTapDown: (value) {
                            setState(() {
                              isPressed = true;
                            });
                          },
                          onTapCancel: () {
                            setState(() {
                              isPressed = false;
                            });
                          },
                          onTap: () {
                            setState(() {
                              isPressed = false;

                              // create random key
                              final randomKey = availbleColors.keys.toList()[
                                  Random().nextInt(availbleColors.length)];

                              // update color
                              selectedColor = availbleColors[randomKey]!;

                              // change code
                              if (code.contains("color")) {
                                code =
                                    "${code.split(",").first},color:$randomKey)";
                              } else {
                                code =
                                    code.replaceAll(")", ",color: $randomKey)");
                              }
                            });
                          },
                          child: Transform.scale(
                              scale: isPressed ? 0.9 : 1,
                              child: Icon(widget.icon,
                                  size: 100, color: selectedColor))),
                ),
                const SizedBox(height: 15),
                Text(widget.name, style: const TextStyle(fontSize: 20)),
                Text("Package Name  :  ${widget.packageName}",
                    style:
                        const TextStyle(fontSize: 14, color: Colors.black45)),
                Text("Package Version  :  ${widget.version}",
                    style:
                        const TextStyle(fontSize: 14, color: Colors.black45)),
                Card(
                  color: appBarColor,
                  margin: const EdgeInsets.all(15),
                  child: Container(
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Code Example",
                              style: TextStyle(
                                  fontFamily:
                                      GoogleFonts.firaCode().fontFamily),
                            ),
                            Row(
                              children: [
                                if (isCopied)
                                  const Text("Copied",
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.black26)),
                                const SizedBox(width: 8),
                                GestureDetector(
                                    onTap: () async => copyCode(),
                                    child: Icon(
                                      isCopied
                                          ? Icons.done_all
                                          : Icons.copy_rounded,
                                      color:
                                          isCopied ? Colors.green : Colors.grey,
                                    )),
                              ],
                            )
                          ],
                        ),
                        const Divider(),
                        HighlightView(
                          code,
                          language: 'dart',
                          theme: codeTheme,
                          textStyle: const TextStyle(
                              backgroundColor: Colors.transparent),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 35,
            right: 10,
            child: AnimatedBuilder(
              animation: animationControl,
              builder: (context, child) => Transform.rotate(
                angle: rightRotate.value,
                child: Transform.rotate(
                  angle: leftRotate.value,
                  child: IconButton(
                    onPressed: () {
                      if (FlutconDB.isExisted(data)) {
                        FlutconDB.delete(data);
                      } else {
                        FlutconDB.insert(data);
                      }
                      animationControl.forward();
                      setState(() {});
                    },
                    icon: Icon(
                      FlutconDB.isExisted(data)
                          ? IconlyBold.heart
                          : IconlyLight.heart,
                      color: FlutconDB.isExisted(data) ? Colors.red : null,
                      size: 30 + (5 * sizeAnimation.value),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Drop Box
          AnimatedPositioned(
            bottom: isDragging ? 100 : -50,
            right: 0,
            left: 0,
            duration: const Duration(milliseconds: 400),
            child: DragTarget(
              onWillAccept: (data) => true,
              onAccept: (DataIcon receivedData) async {
                if (FlutconDB.isExisted(data)) {
                  FlutconDB.delete(data);
                } else {
                  FlutconDB.insert(data);
                }
                setState(() {
                  isDragCompleted = true;
                });
              },
              builder: (context, candidateData, rejectedData) =>
                  Icon(IconlyLight.buy, size: isDragging ? 60 : 27),
            ),
          )
        ],
      ),
    );
  }
}
