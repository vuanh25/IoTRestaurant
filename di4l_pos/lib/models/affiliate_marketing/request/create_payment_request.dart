import 'dart:convert';

class CreatePaymentRequest {
  String? userId;
  String? amount;

  CreatePaymentRequest({
    required this.userId,
    required this.amount,
  });

  CreatePaymentRequest copyWith({
    String? userId,
    String? amount,
  }) =>
      CreatePaymentRequest(
        userId: userId ?? this.userId,
        amount: amount ?? this.amount,
      );

  factory CreatePaymentRequest.fromRawJson(String str) =>
      CreatePaymentRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CreatePaymentRequest.fromJson(Map<String, dynamic> json) => CreatePaymentRequest(
    userId: json['user_id'],
    amount: json['amount'], 
  );

  Map<String, dynamic> toJson() => {
    'user_id': userId,
    'amount': amount, 
  };
}

