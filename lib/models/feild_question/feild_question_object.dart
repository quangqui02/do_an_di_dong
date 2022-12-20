class FeildQuestionObjecj {
  int id;
  String namefield;
  FeildQuestionObjecj({required this.id, required this.namefield});
  static FeildQuestionObjecj fromJson(Map<String, dynamic> json) =>
      FeildQuestionObjecj(
        id: json['id'],
        namefield: json['namefield'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'namefield': namefield,
      };
}
