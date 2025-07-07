import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'icon.g.dart';

@HiveType(typeId: 0)
class DataIcon {
  @HiveField(0)
  int codePoint;

  @HiveField(1)
  String? fontFamily;

  @HiveField(2)
  String? fontPackage;

  @HiveField(3)
  String? name;

  @HiveField(4)
  String? package;

  @HiveField(5)
  String? version;

  @HiveField(6)
  String? code;

  DataIcon(
      {required this.codePoint,
      required this.fontFamily,
      required this.fontPackage,
      required this.name,
      required this.package,
      required this.version,
      required this.code});

  // factory DataIcon.fromJson(Map<String, dynamic> json) {
  //   return DataIcon(
  //     codePoint: json["codePoint"],
  //     fontFamily: json["fontFamily"],
  //     fontPackage: json["fontPackage"],
  //   );
  // }

  // Map<String, dynamic> toJson() {
  //   return {
  //     "codePoint": codePoint,
  //     "fontFamily": fontFamily,
  //     "fontPackage": fontPackage,
  //   };
  // }
  
}

IconData generateIconData(DataIcon dataIcon) {
    return IconData(dataIcon.codePoint, fontFamily: dataIcon.fontFamily, fontPackage: dataIcon.fontPackage);
}
