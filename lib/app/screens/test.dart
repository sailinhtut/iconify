class Record {
  DateTime orderTime;
  int tableNumber;
  List<Food> orders;

  Record({required this.orderTime, required this.tableNumber, required this.orders});

  factory Record.fromJson(Map<String, dynamic> json) {
    return Record(
        orderTime: DateTime.fromMillisecondsSinceEpoch(json["orderTime"]),
        tableNumber: json["tableNumber"],
        orders: List<dynamic>.from(json["orders"]).map((e) => Food.fromJson(e)).toList());
  }

  Map<String, dynamic> toJson() {
    return {
      "orderTime": orderTime.millisecondsSinceEpoch,
      "tableNumber": tableNumber,
      "orders": orders..map((food) => food.toJson()).toList(),
    };
  }
}

class Food {
  String foodName;
  double price;

  Food(this.foodName, this.price);

  factory Food.fromJson(Map<String, dynamic> json) {
    return Food(json["foodName"], json["price"]);
  }

  Map<String, dynamic> toJson() {
    return {"foodName": foodName, "price": price};
  }
}
