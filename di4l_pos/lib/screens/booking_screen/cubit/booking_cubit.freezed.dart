// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BookingStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Booking> get bookings => throw _privateConstructorUsedError;
  List<Booking> get bookingsOriginal => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  Booking? get booking => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateDataCopyWith<BookingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateDataCopyWith<$Res> {
  factory $BookingStateDataCopyWith(
          BookingStateData value, $Res Function(BookingStateData) then) =
      _$BookingStateDataCopyWithImpl<$Res, BookingStateData>;
  @useResult
  $Res call(
      {StatusType status,
      List<Booking> bookings,
      List<Booking> bookingsOriginal,
      String error,
      Booking? booking});
}

/// @nodoc
class _$BookingStateDataCopyWithImpl<$Res, $Val extends BookingStateData>
    implements $BookingStateDataCopyWith<$Res> {
  _$BookingStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bookings = null,
    Object? bookingsOriginal = null,
    Object? error = null,
    Object? booking = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      bookings: null == bookings
          ? _value.bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      bookingsOriginal: null == bookingsOriginal
          ? _value.bookingsOriginal
          : bookingsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BookingStateDataCopyWith<$Res>
    implements $BookingStateDataCopyWith<$Res> {
  factory _$$_BookingStateDataCopyWith(
          _$_BookingStateData value, $Res Function(_$_BookingStateData) then) =
      __$$_BookingStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status,
      List<Booking> bookings,
      List<Booking> bookingsOriginal,
      String error,
      Booking? booking});
}

/// @nodoc
class __$$_BookingStateDataCopyWithImpl<$Res>
    extends _$BookingStateDataCopyWithImpl<$Res, _$_BookingStateData>
    implements _$$_BookingStateDataCopyWith<$Res> {
  __$$_BookingStateDataCopyWithImpl(
      _$_BookingStateData _value, $Res Function(_$_BookingStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? bookings = null,
    Object? bookingsOriginal = null,
    Object? error = null,
    Object? booking = freezed,
  }) {
    return _then(_$_BookingStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      bookings: null == bookings
          ? _value._bookings
          : bookings // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      bookingsOriginal: null == bookingsOriginal
          ? _value._bookingsOriginal
          : bookingsOriginal // ignore: cast_nullable_to_non_nullable
              as List<Booking>,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as Booking?,
    ));
  }
}

/// @nodoc

class _$_BookingStateData implements _BookingStateData {
  const _$_BookingStateData(
      {this.status = StatusType.init,
      final List<Booking> bookings = const [],
      final List<Booking> bookingsOriginal = const [],
      this.error = '',
      this.booking})
      : _bookings = bookings,
        _bookingsOriginal = bookingsOriginal;

  @override
  @JsonKey()
  final StatusType status;
  final List<Booking> _bookings;
  @override
  @JsonKey()
  List<Booking> get bookings {
    if (_bookings is EqualUnmodifiableListView) return _bookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookings);
  }

  final List<Booking> _bookingsOriginal;
  @override
  @JsonKey()
  List<Booking> get bookingsOriginal {
    if (_bookingsOriginal is EqualUnmodifiableListView)
      return _bookingsOriginal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bookingsOriginal);
  }

  @override
  @JsonKey()
  final String error;
  @override
  final Booking? booking;

  @override
  String toString() {
    return 'BookingStateData(status: $status, bookings: $bookings, bookingsOriginal: $bookingsOriginal, error: $error, booking: $booking)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookingStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._bookings, _bookings) &&
            const DeepCollectionEquality()
                .equals(other._bookingsOriginal, _bookingsOriginal) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.booking, booking) || other.booking == booking));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_bookings),
      const DeepCollectionEquality().hash(_bookingsOriginal),
      error,
      booking);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BookingStateDataCopyWith<_$_BookingStateData> get copyWith =>
      __$$_BookingStateDataCopyWithImpl<_$_BookingStateData>(this, _$identity);
}

abstract class _BookingStateData implements BookingStateData {
  const factory _BookingStateData(
      {final StatusType status,
      final List<Booking> bookings,
      final List<Booking> bookingsOriginal,
      final String error,
      final Booking? booking}) = _$_BookingStateData;

  @override
  StatusType get status;
  @override
  List<Booking> get bookings;
  @override
  List<Booking> get bookingsOriginal;
  @override
  String get error;
  @override
  Booking? get booking;
  @override
  @JsonKey(ignore: true)
  _$$_BookingStateDataCopyWith<_$_BookingStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BookingState {
  BookingStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookingStateCopyWith<BookingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingStateCopyWith<$Res> {
  factory $BookingStateCopyWith(
          BookingState value, $Res Function(BookingState) then) =
      _$BookingStateCopyWithImpl<$Res, BookingState>;
  @useResult
  $Res call({BookingStateData? data});

  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BookingStateCopyWithImpl<$Res, $Val extends BookingState>
    implements $BookingStateCopyWith<$Res> {
  _$BookingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BookingStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InititalCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$InititalCopyWith(
          _$Initital value, $Res Function(_$Initital) then) =
      __$$InititalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InititalCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$Initital>
    implements _$$InititalCopyWith<$Res> {
  __$$InititalCopyWithImpl(_$Initital _value, $Res Function(_$Initital) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initital(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$Initital implements Initital {
  const _$Initital({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initital &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InititalCopyWith<_$Initital> get copyWith =>
      __$$InititalCopyWithImpl<_$Initital>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initital implements BookingState {
  const factory Initital({final BookingStateData? data}) = _$Initital;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InititalCopyWith<_$Initital> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookingsCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$GetBookingsCopyWith(
          _$GetBookings value, $Res Function(_$GetBookings) then) =
      __$$GetBookingsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBookingsCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$GetBookings>
    implements _$$GetBookingsCopyWith<$Res> {
  __$$GetBookingsCopyWithImpl(
      _$GetBookings _value, $Res Function(_$GetBookings) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBookings(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$GetBookings implements GetBookings {
  const _$GetBookings({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.getBookings(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookings &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookingsCopyWith<_$GetBookings> get copyWith =>
      __$$GetBookingsCopyWithImpl<_$GetBookings>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return getBookings(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return getBookings?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBookings != null) {
      return getBookings(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return getBookings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return getBookings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBookings != null) {
      return getBookings(this);
    }
    return orElse();
  }
}

abstract class GetBookings implements BookingState {
  const factory GetBookings({final BookingStateData? data}) = _$GetBookings;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBookingsCopyWith<_$GetBookings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookingsByFilterCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$GetBookingsByFilterCopyWith(_$GetBookingsByFilter value,
          $Res Function(_$GetBookingsByFilter) then) =
      __$$GetBookingsByFilterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBookingsByFilterCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$GetBookingsByFilter>
    implements _$$GetBookingsByFilterCopyWith<$Res> {
  __$$GetBookingsByFilterCopyWithImpl(
      _$GetBookingsByFilter _value, $Res Function(_$GetBookingsByFilter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBookingsByFilter(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$GetBookingsByFilter implements GetBookingsByFilter {
  const _$GetBookingsByFilter({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.getBookingsByFilter(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookingsByFilter &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookingsByFilterCopyWith<_$GetBookingsByFilter> get copyWith =>
      __$$GetBookingsByFilterCopyWithImpl<_$GetBookingsByFilter>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return getBookingsByFilter(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return getBookingsByFilter?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBookingsByFilter != null) {
      return getBookingsByFilter(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return getBookingsByFilter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return getBookingsByFilter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBookingsByFilter != null) {
      return getBookingsByFilter(this);
    }
    return orElse();
  }
}

abstract class GetBookingsByFilter implements BookingState {
  const factory GetBookingsByFilter({final BookingStateData? data}) =
      _$GetBookingsByFilter;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBookingsByFilterCopyWith<_$GetBookingsByFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBookingCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$GetBookingCopyWith(
          _$GetBooking value, $Res Function(_$GetBooking) then) =
      __$$GetBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetBookingCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$GetBooking>
    implements _$$GetBookingCopyWith<$Res> {
  __$$GetBookingCopyWithImpl(
      _$GetBooking _value, $Res Function(_$GetBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetBooking(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$GetBooking implements GetBooking {
  const _$GetBooking({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.getBooking(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBooking &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetBookingCopyWith<_$GetBooking> get copyWith =>
      __$$GetBookingCopyWithImpl<_$GetBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return getBooking(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return getBooking?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBooking != null) {
      return getBooking(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return getBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return getBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (getBooking != null) {
      return getBooking(this);
    }
    return orElse();
  }
}

abstract class GetBooking implements BookingState {
  const factory GetBooking({final BookingStateData? data}) = _$GetBooking;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetBookingCopyWith<_$GetBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreateBookingCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$CreateBookingCopyWith(
          _$CreateBooking value, $Res Function(_$CreateBooking) then) =
      __$$CreateBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CreateBookingCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$CreateBooking>
    implements _$$CreateBookingCopyWith<$Res> {
  __$$CreateBookingCopyWithImpl(
      _$CreateBooking _value, $Res Function(_$CreateBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$CreateBooking(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$CreateBooking implements CreateBooking {
  const _$CreateBooking({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.createBooking(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateBooking &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateBookingCopyWith<_$CreateBooking> get copyWith =>
      __$$CreateBookingCopyWithImpl<_$CreateBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return createBooking(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return createBooking?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return createBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return createBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (createBooking != null) {
      return createBooking(this);
    }
    return orElse();
  }
}

abstract class CreateBooking implements BookingState {
  const factory CreateBooking({final BookingStateData? data}) = _$CreateBooking;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$CreateBookingCopyWith<_$CreateBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBookingCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$UpdateBookingCopyWith(
          _$UpdateBooking value, $Res Function(_$UpdateBooking) then) =
      __$$UpdateBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateBookingCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$UpdateBooking>
    implements _$$UpdateBookingCopyWith<$Res> {
  __$$UpdateBookingCopyWithImpl(
      _$UpdateBooking _value, $Res Function(_$UpdateBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$UpdateBooking(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$UpdateBooking implements UpdateBooking {
  const _$UpdateBooking({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.updateBooking(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBooking &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBookingCopyWith<_$UpdateBooking> get copyWith =>
      __$$UpdateBookingCopyWithImpl<_$UpdateBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return updateBooking(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return updateBooking?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (updateBooking != null) {
      return updateBooking(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return updateBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return updateBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (updateBooking != null) {
      return updateBooking(this);
    }
    return orElse();
  }
}

abstract class UpdateBooking implements BookingState {
  const factory UpdateBooking({final BookingStateData? data}) = _$UpdateBooking;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$UpdateBookingCopyWith<_$UpdateBooking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteBookingCopyWith<$Res>
    implements $BookingStateCopyWith<$Res> {
  factory _$$DeleteBookingCopyWith(
          _$DeleteBooking value, $Res Function(_$DeleteBooking) then) =
      __$$DeleteBookingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BookingStateData? data});

  @override
  $BookingStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$DeleteBookingCopyWithImpl<$Res>
    extends _$BookingStateCopyWithImpl<$Res, _$DeleteBooking>
    implements _$$DeleteBookingCopyWith<$Res> {
  __$$DeleteBookingCopyWithImpl(
      _$DeleteBooking _value, $Res Function(_$DeleteBooking) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$DeleteBooking(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BookingStateData?,
    ));
  }
}

/// @nodoc

class _$DeleteBooking implements DeleteBooking {
  const _$DeleteBooking({this.data});

  @override
  final BookingStateData? data;

  @override
  String toString() {
    return 'BookingState.deleteBooking(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBooking &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBookingCopyWith<_$DeleteBooking> get copyWith =>
      __$$DeleteBookingCopyWithImpl<_$DeleteBooking>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BookingStateData? data) initial,
    required TResult Function(BookingStateData? data) getBookings,
    required TResult Function(BookingStateData? data) getBookingsByFilter,
    required TResult Function(BookingStateData? data) getBooking,
    required TResult Function(BookingStateData? data) createBooking,
    required TResult Function(BookingStateData? data) updateBooking,
    required TResult Function(BookingStateData? data) deleteBooking,
  }) {
    return deleteBooking(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BookingStateData? data)? initial,
    TResult? Function(BookingStateData? data)? getBookings,
    TResult? Function(BookingStateData? data)? getBookingsByFilter,
    TResult? Function(BookingStateData? data)? getBooking,
    TResult? Function(BookingStateData? data)? createBooking,
    TResult? Function(BookingStateData? data)? updateBooking,
    TResult? Function(BookingStateData? data)? deleteBooking,
  }) {
    return deleteBooking?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BookingStateData? data)? initial,
    TResult Function(BookingStateData? data)? getBookings,
    TResult Function(BookingStateData? data)? getBookingsByFilter,
    TResult Function(BookingStateData? data)? getBooking,
    TResult Function(BookingStateData? data)? createBooking,
    TResult Function(BookingStateData? data)? updateBooking,
    TResult Function(BookingStateData? data)? deleteBooking,
    required TResult orElse(),
  }) {
    if (deleteBooking != null) {
      return deleteBooking(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetBookings value) getBookings,
    required TResult Function(GetBookingsByFilter value) getBookingsByFilter,
    required TResult Function(GetBooking value) getBooking,
    required TResult Function(CreateBooking value) createBooking,
    required TResult Function(UpdateBooking value) updateBooking,
    required TResult Function(DeleteBooking value) deleteBooking,
  }) {
    return deleteBooking(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetBookings value)? getBookings,
    TResult? Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult? Function(GetBooking value)? getBooking,
    TResult? Function(CreateBooking value)? createBooking,
    TResult? Function(UpdateBooking value)? updateBooking,
    TResult? Function(DeleteBooking value)? deleteBooking,
  }) {
    return deleteBooking?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetBookings value)? getBookings,
    TResult Function(GetBookingsByFilter value)? getBookingsByFilter,
    TResult Function(GetBooking value)? getBooking,
    TResult Function(CreateBooking value)? createBooking,
    TResult Function(UpdateBooking value)? updateBooking,
    TResult Function(DeleteBooking value)? deleteBooking,
    required TResult orElse(),
  }) {
    if (deleteBooking != null) {
      return deleteBooking(this);
    }
    return orElse();
  }
}

abstract class DeleteBooking implements BookingState {
  const factory DeleteBooking({final BookingStateData? data}) = _$DeleteBooking;

  @override
  BookingStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$DeleteBookingCopyWith<_$DeleteBooking> get copyWith =>
      throw _privateConstructorUsedError;
}
