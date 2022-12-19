class AttackSendObject {
  final int id;
  final String name;
  final String status;

  AttackSendObject(this.id, this.name, this.status);
  AttackSendObject.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        name = res['name'],
        status = res['status'];
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'name': name,
      'status': status,
    };
  }
}
