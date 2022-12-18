import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learn/future_provider/future_user_model.dart';
import 'package:http/http.dart' as http;

final userRepositoryProviderWithValue = Provider((ref) => UserRepositoryWithValue());

class UserRepositoryWithValue {
  Future<FutureUserModel> fetchUserDataWithValue(String input) {
    var url = "https://jsonplaceholder.typicode.com/users/$input";
    return http
        .get(Uri.parse(url))
        .then((value) => FutureUserModel.fromJson(value.body));
  }
}
