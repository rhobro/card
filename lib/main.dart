import 'package:flutter/material.dart';
import 'package:nfc_manager/nfc_manager.dart';

import 'app.dart';

Future<void> main() async {
  // flutter init
  WidgetsFlutterBinding.ensureInitialized();
  // check nfc
  print(await NfcManager.instance.isAvailable());
  NfcManager.instance.startSession(onDiscovered: (tag) async {
    print(tag.handle);
    print(tag.data);
  });

  runApp(MaterialApp(
    home: App(),
  ));
}
