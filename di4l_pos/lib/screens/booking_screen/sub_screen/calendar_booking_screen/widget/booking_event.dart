import 'package:di4l_pos/models/booking/response/booking_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';

class BookingEvent extends EventInterface {
  final Booking booking;
  final DateTime date;
  final String? title;
  final String? description;
  final String? location;
  final Widget? icon;
  final Widget? dot;
  final int? id;
  BookingEvent({
    this.id,
    required this.booking,
    required this.date,
    this.title,
    this.description,
    this.location,
    this.icon,
    this.dot,
  });

  @override
  bool operator ==(dynamic other) {
    return date == other.date &&
        title == other.title &&
        description == other.description &&
        location == other.location &&
        icon == other.icon &&
        dot == other.dot &&
        id == other.id;
  }

  @override
  int get hashCode => Object.hash(date, description, location, title, icon, id);

  @override
  DateTime getDate() {
    return date;
  }

  @override
  int? getId() {
    return id;
  }

  @override
  Widget? getDot() {
    return dot;
  }

  @override
  Widget? getIcon() {
    return icon;
  }

  @override
  String? getTitle() {
    return title;
  }

  @override
  String? getDescription() {
    return description;
  }

  @override
  String? getLocation() {
    return location;
  }
}
