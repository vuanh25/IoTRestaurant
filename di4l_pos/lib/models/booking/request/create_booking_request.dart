// ignore_for_file: public_member_api_docs, sort_constructors_first
class CreateBookingRequest {
  String? bookingStart;
  String? bookingEnd;
  String? bookingNote;
  int? contactId;
  int? locationId;
  int? resWaiterId;
  int? resTableId;
  int? typesOfServicesId;
  int? correspondent;

  CreateBookingRequest(
      {this.bookingStart,
      this.bookingEnd,
      this.bookingNote,
      this.contactId,
      this.locationId,
      this.resWaiterId,
      this.resTableId,
      this.typesOfServicesId,
      this.correspondent});

  CreateBookingRequest.fromJson(Map<String, dynamic> json) {
    bookingStart = json['booking_start'];
    bookingEnd = json['booking_end'];
    bookingNote = json['booking_note'];
    contactId = json['contact_id'];
    locationId = json['location_id'];
    resWaiterId = json['res_waiter_id'];
    resTableId = json['res_table_id'];
    typesOfServicesId = json['types_of_services_id'];
    correspondent = json['correspondent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['booking_start'] = bookingStart;
    data['booking_end'] = bookingEnd;
    data['booking_note'] = bookingNote;
    data['contact_id'] = contactId;
    data['location_id'] = locationId;
    data['res_waiter_id'] = resWaiterId;
    data['res_table_id'] = resTableId;
    data['types_of_services_id'] = typesOfServicesId;
    data['correspondent'] = correspondent;
    return data;
  }

  CreateBookingRequest copyWith({
    String? bookingStart,
    String? bookingEnd,
    String? bookingNote,
    int? contactId,
    int? locationId,
    int? resWaiterId,
    int? resTableId,
    int? typesOfServicesId,
    int? correspondent,
  }) {
    return CreateBookingRequest(
      bookingStart: bookingStart ?? this.bookingStart,
      bookingEnd: bookingEnd ?? this.bookingEnd,
      bookingNote: bookingNote ?? this.bookingNote,
      contactId: contactId ?? this.contactId,
      locationId: locationId ?? this.locationId,
      resWaiterId: resWaiterId ?? this.resWaiterId,
      resTableId: resTableId ?? this.resTableId,
      typesOfServicesId: typesOfServicesId ?? this.typesOfServicesId,
      correspondent: correspondent ?? this.correspondent,
    );
  }
}
