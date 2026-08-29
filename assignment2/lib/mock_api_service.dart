import 'user.dart';
import 'api_exception.dart';

class MockApiService {
  final Map<int, User> _users = {
    1: User(id: 1, name: 'Alice', email: 'alice@example.com'),
    2: User(id: 2, name: 'Bob'),
    3: User(id: 3, name: 'Charlie', email: 'charlie@example.com'),
  };

  Future<User?> fetchUser(int id) async {
    await Future.delayed(Duration(seconds: 1));

    if (id == 99) {
      throw ApiException('Server did not respond');
    }

    return _users[id];
  }
}
