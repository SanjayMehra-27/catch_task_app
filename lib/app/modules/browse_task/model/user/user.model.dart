class UserModel {
  final String id;
  final String name;
  final String? email;
  final String? imageUrl;
  final String? phoneNumber;
  final String? location;
  UserModel({
    required this.id,
    required this.name,
    this.email,
    this.imageUrl,
    this.phoneNumber,
    this.location,
  });
}
