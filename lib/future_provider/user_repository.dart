import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/future_provider/future_user_model.dart';
import 'package:http/http.dart' as http;

final userRepositoryProvider = Provider((ref) => UserRepository());

class UserRepository {
  Future<FutureUserModel> fetchUserData() {
    const url = "https://jsonplaceholder.typicode.com/users/1";
    return http
        .get(Uri.parse(url))
        .then((value) => FutureUserModel.fromJson(value.body));
  }
}
