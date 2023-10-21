import 'dart:convert';

class GetSellRequest {
  GetSellRequest({
    this.locationId,
    this.contactId,
    this.paymentStatus,
    this.startDate,
    this.endDate,
    this.userId,
    this.serviceStaffId,
    this.shippingStatus,
    this.onlySubscriptions,
    this.perPage,
  });

  String? locationId;
  String? contactId;
  String? paymentStatus;
  String? startDate;
  String? endDate;
  String? userId;
  String? serviceStaffId;
  String? shippingStatus;
  String? onlySubscriptions;
  String? perPage;

  GetSellRequest copyWith({
    String? locationId,
    String? contactId,
    String? paymentStatus,
    String? startDate,
    String? endDate,
    String? userId,
    String? serviceStaffId,
    String? shippingStatus,
    String? onlySubscriptions,
    String? perPage,
  }) =>
      GetSellRequest(
        locationId: locationId ?? this.locationId,
        contactId: contactId ?? this.contactId,
        paymentStatus: paymentStatus ?? this.paymentStatus,
        startDate: startDate ?? this.startDate,
        endDate: endDate ?? this.endDate,
        userId: userId ?? this.userId,
        serviceStaffId: serviceStaffId ?? this.serviceStaffId,
        shippingStatus: shippingStatus ?? this.shippingStatus,
        onlySubscriptions: onlySubscriptions ?? this.onlySubscriptions,
        perPage: perPage ?? this.perPage,
      );

  factory GetSellRequest.fromRawJson(String str) =>
      GetSellRequest.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GetSellRequest.fromJson(Map<String, dynamic> json) => GetSellRequest(
        locationId: json["location_id"],
        contactId: json["contact_id"],
        paymentStatus:
            json["payment_status"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        userId: json["user_id"],
        serviceStaffId:
            json["service_staff_id"],
        shippingStatus:
            json["shipping_status"],
        onlySubscriptions: json["only_subscriptions"],
        perPage: json["per_page"],
      );

  Map<String, dynamic> toJson() => {
        "location_id": locationId,
        "contact_id": contactId,
        "payment_status": paymentStatus,
        "start_date": startDate,
        "end_date": endDate,
        "user_id": userId,
        "service_staff_id": serviceStaffId,
        "shipping_status": shippingStatus,
        "only_subscriptions":
            onlySubscriptions,
        "per_page": perPage,
      };
}
