class AttacHistorykObject {
  final int id;
  final String name;
  final String name2;
  final int point;
  final int point2;

  AttacHistorykObject(this.id, this.name, this.name2, this.point, this.point2);
  AttacHistorykObject.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        name2 = res['name2'],
        point = res['point'],
        point2 = res['point2'];

  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'name2': name2,
      'point': point,
      'point2': point2,
    };
  }
}
