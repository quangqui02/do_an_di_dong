class User {
  final int id;
  final String name;
  final String email;
  final int point;
  final String ranker;
  final String image;

  const User({
    required this.id,
    required this.name,
    required this.email,
    required this.point,
    required this.ranker,
    required this.image,
  });
  User.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        email = r['email'],
        point = r['point'],
        ranker = r['ranker'],
        image = r['image'] == null ? "images/user.png" : r['image'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'email ': email,
      'point': point,
      'ranker ': ranker,
      'image': image,
    };
  }
}
