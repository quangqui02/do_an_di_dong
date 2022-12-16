class BuyBrainObject {
  final int id;
  final int brain;
  final int price;
  final int status;

  BuyBrainObject(this.id, this.brain, this.price, this.status);
  BuyBrainObject.fromJson(Map<String, dynamic> res)
      : id = res['id'],
        brain = res['brain'],
        price = res['price'],
        status = res['status'];
  Map<String, Object?> toJson() {
    return {
      'id': id,
      'brain': brain,
      'price': price,
      'status': status,
    };
  }
}
