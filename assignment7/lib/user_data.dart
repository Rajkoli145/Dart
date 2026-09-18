// Data model class representing a registered user
class UserRegistration {
  final String fullName;
  final String email;
  final String phone;
  final String password;

  const UserRegistration({
    required this.fullName,
    required this.email,
    required this.phone,
    required this.password,
  });
}
