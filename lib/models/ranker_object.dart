class RankUser {
  final int id;
  final String name;

  final int point;

  const RankUser({
    required this.id,
    required this.name,
    required this.point,
  });
  RankUser.fromJson(Map<String, dynamic> r)
      : id = r['id'],
        name = r['name'],
        point = r['point'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'point': point,
    };
  }
}
