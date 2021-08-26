import 'package:get/get.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class StorageProvider extends FlutterSecureStorage {
  final FlutterSecureStorage storage = new FlutterSecureStorage();

  readOneFromStorage(String key) async {
    String? value = await storage.read(key: key);
    return value;
  }
}
