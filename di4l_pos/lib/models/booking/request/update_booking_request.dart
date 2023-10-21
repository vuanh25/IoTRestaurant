class UpdateBookingRequest {
  String? bookingStatus;

  UpdateBookingRequest({this.bookingStatus});

  UpdateBookingRequest.fromJson(Map<String, dynamic> json) {
    bookingStatus = json['booking_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_status'] = bookingStatus;
    return data;
  }
}
