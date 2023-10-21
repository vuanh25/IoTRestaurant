part of 'booking_cubit.dart';

@freezed
class BookingStateData with _$BookingStateData {
  const factory BookingStateData({
    @Default(StatusType.init) StatusType status,
    @Default([]) List<Booking> bookings,
    @Default([]) List<Booking> bookingsOriginal,
    @Default('') String error,
    Booking? booking,
  }) = _BookingStateData;
}

@freezed
class BookingState with _$BookingState {
  const factory BookingState.initial({BookingStateData? data}) = Initital;
  const factory BookingState.getBookings({BookingStateData? data}) =
      GetBookings;
  const factory BookingState.getBookingsByFilter({BookingStateData? data}) =
      GetBookingsByFilter;
  const factory BookingState.getBooking({BookingStateData? data}) = GetBooking;
  const factory BookingState.createBooking({BookingStateData? data}) =
      CreateBooking;
  const factory BookingState.updateBooking({BookingStateData? data}) =
      UpdateBooking;
  const factory BookingState.deleteBooking({BookingStateData? data}) =
      DeleteBooking;
}
