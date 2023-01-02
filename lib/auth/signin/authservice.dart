import 'package:dio/dio.dart';
import 'package:bansosku/constants/my_env.dart';
import 'package:bansosku/models/user.dart';

class AuthService {
  Dio dio = Dio();

  login(User user) async {
    try {
      return await dio.post('$uri/api/auth',
          data: {
            "name": user.email,
            "password": user.password,
            "user_type": user.user_type
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      print(e);
    }
  }

  addUser(User user) async {
    try {
      return await dio.post('$uri/api/adduser',
          data: {
            "name": user.email,
            "password": user.password,
            "user_type": user.user_type
          },
          options: Options(contentType: Headers.formUrlEncodedContentType));
    } on DioError catch (e) {
      print(e);
    }
  }
}
