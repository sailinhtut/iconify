import 'package:flutter/foundation.dart';
import 'package:iconify/app/model/icon.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:iconify/main.dart';

class FlutconDB {
  static ValueListenable<Box<DataIcon>> getAllIcons() {
    return iconBox.listenable();
  }

  static insert(DataIcon icon) async {
    await iconBox.add(icon);
  }

  static deleteWithKey(dynamic key) async {
    await iconBox.delete(key);
  }

  static delete(DataIcon icon) {
    final allIcons = getAllIcons().value;

    // ignore: avoid_function_literals_in_foreach_calls
    allIcons.keys.forEach((key) {
      final dataIcon = allIcons.get(key);
      if (dataIcon!.codePoint == icon.codePoint && dataIcon.fontFamily == icon.fontFamily) {
        deleteWithKey(key);
      }
    });
  }

  static bool isExisted(DataIcon icon) {
    final allIcons = getAllIcons().value;

    bool existed = false;

    // ignore: avoid_function_literals_in_foreach_calls
    allIcons.keys.forEach((key) {
      final dataIcon = allIcons.get(key);
      if (dataIcon!.codePoint == icon.codePoint && dataIcon.fontFamily == icon.fontFamily) {
        existed = true;
      }
    });

    return existed;
  }
}
