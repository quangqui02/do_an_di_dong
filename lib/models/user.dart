class User {
  final int id;
  final String name;
  final String point;
  final String image;
  final int ranker;
  final int status;

  const User({
    required this.id,
    required this.name,
    required this.point,
    required this.ranker,
    required this.image,
    required this.status,
  });
  User.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        point = r['point'],
        ranker = r['ranker'],
        image = r['image'],
        status = r['status'];
}
