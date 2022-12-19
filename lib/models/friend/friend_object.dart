class FriendObject {
  final int id;
  final String name;
  final String avata;
  final int point;
  final int status;

  FriendObject(this.id, this.name, this.avata, this.point, this.status);
  FriendObject.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        avata = res['avata'],
        point = res['point'],
        status = res['status'];
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'avata': avata,
      'point': point,
      'status': status,
    };
  }
}
