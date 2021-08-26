import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class StorageProvider extends FlutterSecureStorage {
  final storage = new FlutterSecureStorage();

  Future<String?> readStorageValue(String key) async {
    try {
      var value = await storage.read(key: key);
      print('Reading a value from storage..');
      return value;
    } catch (e) {
      print('Caught error at storage_provider method: readStorageValue()');
      print('---------------------ERROR CAUGHT--------------------------');
      print('\n$e');
    }
    return null;
  }

  Future<Map<String, String>?> readAllStorageValues() async {
    try {
      Map<String, String> allValues = await storage.readAll();
      print('Reading ALL values from storage ..');
      return allValues;
    } catch (e) {
      print('Caught error at storage_provider method: readAllStorageValues()');
      print('---------------------ERROR CAUGHT--------------------------');
      print('\n$e');
    }
    return null;
  }

  Future<void> deleteStorageValue(String key) async {
    try {
      await storage.delete(key: key);
      print('Deleting $key from storage..');
      return print('The key specified has been deleted from storage!');
    } catch (e) {
      print('Caught error at storage_provider method: deleteStorageValue()');
      print('---------------------ERROR CAUGHT--------------------------');
      print('\n$e');
    }
    return null;
  }

  Future<void> deleteAllStorageValues() async {
    try {
      await storage.deleteAll();
      print('Deleting ALL values from storage..');
      return print('ALL values have been deleted from storage!');
    } catch (e) {
      print(
          'Caught error at storage_provider method: deleteAllStorageValues()');
      print('---------------------ERROR CAUGHT--------------------------');
      print('\n$e');
    }
    return null;
  }

  Future<void> writeValueToStorage(String key, String value) async {
    try {
      await storage.write(key: key, value: value);
      print('Writing $value to key: $key in storage..');
      return print('Key:Value pair specified has been written to storage!');
    } catch (e) {
      print('Caught error at storage_provider method: writeValueToStorage()');
      print('---------------------ERROR CAUGHT--------------------------');
      print('\n$e');
    }
    return null;
  }
}
