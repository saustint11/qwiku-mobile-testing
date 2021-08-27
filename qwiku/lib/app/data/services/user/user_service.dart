import 'dart:convert';

import 'package:get/get.dart';

import 'package:qwiku/app/data/classes/user_model.dart';
import 'package:qwiku/app/data/providers/storage/storage_provider.dart';

class UserService extends GetxService {
  StorageProvider _storageProvider = StorageProvider();

  final _userUpdate = User().obs;

  GetStream<User?> listenForUserUpdates() {
    return this._userUpdate.subject;
  }

  emitUserUpdate(User? user) {
    this._userUpdate.update((value) {
      user = value;
    });
  }

  setToken(String token) {
    // _storageProvider.storage.write(key: 'token', value: token);
    _storageProvider.writeValueToStorage('token', token);
    print('User token has been SET to storage..\nToken: $token');
  }

  Future<String?> getToken() async {
    print('Getting user token..');
    try {
      // var token = await _storageProvider.storage.read(key: 'token');
      var token = await _storageProvider.readStorageValue('token');
      print('token has been read!');
      print('User Token:\n$token');
      return token;
    } catch (e) {
      print('Error getting user token at getToken()!');
      print('ERROR: $e');
    }
    return null;
  }

  removeToken() {
    // _storageProvider.storage.delete(key: 'token');
    _storageProvider.deleteStorageValue('token');
    print('user token has been removed from storage!');
  }

  setUser(User user) {
    // _storageProvider.storage.write(key: 'user', value: jsonEncode(user));
    _storageProvider.writeValueToStorage('user', jsonEncode(user));
    print('User object has been written to storage!');
    print('USER: $user');
    this.emitUserUpdate(user);
  }

  Future<User?> getUser() async {
    try {
      // var userStr = await _storageProvider.storage.read(key: 'user');
      var userStr = await _storageProvider.readStorageValue('user');
      print('Getting user object..');
      if (userStr != null) return jsonDecode(userStr);
    } catch (e) {
      print('Error getting user token at getToken()!');
      print('ERROR: $e');
    }
    return null;
  }

  removeUser() {
    // _storageProvider.storage.delete(key: 'user');
    _storageProvider.deleteStorageValue('user');
    print('User object has been removed from storage!');
    this.emitUserUpdate(null);
  }
}
