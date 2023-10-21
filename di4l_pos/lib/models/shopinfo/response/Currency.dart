class Currency {
  int? id;
  String? info;

  Currency({this.id, this.info});

  Currency.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    info = json['info'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['info'] = this.info;
    return data;
  }
}