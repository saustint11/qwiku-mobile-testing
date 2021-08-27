import 'package:get/get.dart';
import 'package:qwiku/app/data/classes/user_model.dart';
import 'package:qwiku/app/data/providers/api/api_provider.dart';
import 'package:qwiku/app/data/services/user/user_service.dart';

class AuthService extends GetxService {
  final userService = UserService();
  final api = ApiProvider();

  Future<Users?> authenticateUser(
    String email,
    String password,
  ) async {
    print('AUTH_SERVICE: Trying to authenticate user.. please wait..');
    try {
      final response = await api.authenticateUser(email, password);
      if (response != null) {
        var token = response.token;
        userService.setToken(token!);
      }
      return response;
    } catch (e) {
      print('Error at authenticateUser in auth_service');
      print('ERROR:\n$e');
    }

    print('Not sure what happened.. authenticateUser() in auth_service..');
    return null;
  }
}
