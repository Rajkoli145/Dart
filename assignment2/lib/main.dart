import 'mock_api_service.dart';

Future<void> printUser(MockApiService service, int id) async {
  print('Fetching user $id...');
  try {
    final user = await service.fetchUser(id);
    if (user == null) {
      print('No user found with id $id');
    } else {
      print(user);
    }
  } catch (e) {
    print('Failed to fetch user $id: $e');
  }
  print('');
}

void main() async {
  final service = MockApiService();
  final ids = [1, 2, 3, 4, 99];

  for (var id in ids) {
    await printUser(service, id);
  }

  print('Done fetching all users.');
}
