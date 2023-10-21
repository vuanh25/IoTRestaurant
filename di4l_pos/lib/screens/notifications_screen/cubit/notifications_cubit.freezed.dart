// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationsStateData {
  List<NotificationModel> get notifications =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateDataCopyWith<NotificationsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateDataCopyWith<$Res> {
  factory $NotificationsStateDataCopyWith(NotificationsStateData value,
          $Res Function(NotificationsStateData) then) =
      _$NotificationsStateDataCopyWithImpl<$Res, NotificationsStateData>;
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class _$NotificationsStateDataCopyWithImpl<$Res,
        $Val extends NotificationsStateData>
    implements $NotificationsStateDataCopyWith<$Res> {
  _$NotificationsStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_value.copyWith(
      notifications: null == notifications
          ? _value.notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NotificationsStateDataCopyWith<$Res>
    implements $NotificationsStateDataCopyWith<$Res> {
  factory _$$_NotificationsStateDataCopyWith(_$_NotificationsStateData value,
          $Res Function(_$_NotificationsStateData) then) =
      __$$_NotificationsStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NotificationModel> notifications});
}

/// @nodoc
class __$$_NotificationsStateDataCopyWithImpl<$Res>
    extends _$NotificationsStateDataCopyWithImpl<$Res,
        _$_NotificationsStateData>
    implements _$$_NotificationsStateDataCopyWith<$Res> {
  __$$_NotificationsStateDataCopyWithImpl(_$_NotificationsStateData _value,
      $Res Function(_$_NotificationsStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notifications = null,
  }) {
    return _then(_$_NotificationsStateData(
      notifications: null == notifications
          ? _value._notifications
          : notifications // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$_NotificationsStateData implements _NotificationsStateData {
  const _$_NotificationsStateData(
      {final List<NotificationModel> notifications = const []})
      : _notifications = notifications;

  final List<NotificationModel> _notifications;
  @override
  @JsonKey()
  List<NotificationModel> get notifications {
    if (_notifications is EqualUnmodifiableListView) return _notifications;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notifications);
  }

  @override
  String toString() {
    return 'NotificationsStateData(notifications: $notifications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotificationsStateData &&
            const DeepCollectionEquality()
                .equals(other._notifications, _notifications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_notifications));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotificationsStateDataCopyWith<_$_NotificationsStateData> get copyWith =>
      __$$_NotificationsStateDataCopyWithImpl<_$_NotificationsStateData>(
          this, _$identity);
}

abstract class _NotificationsStateData implements NotificationsStateData {
  const factory _NotificationsStateData(
          {final List<NotificationModel> notifications}) =
      _$_NotificationsStateData;

  @override
  List<NotificationModel> get notifications;
  @override
  @JsonKey(ignore: true)
  _$$_NotificationsStateDataCopyWith<_$_NotificationsStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsState {
  NotificationsStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsStateData? data) initial,
    required TResult Function(NotificationsStateData? data) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsStateData? data)? initial,
    TResult? Function(NotificationsStateData? data)? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsStateData? data)? initial,
    TResult Function(NotificationsStateData? data)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetNotifications value) getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetNotifications value)? getNotifications,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationsStateCopyWith<NotificationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
  @useResult
  $Res call({NotificationsStateData? data});

  $NotificationsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

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
              as NotificationsStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NotificationsStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $NotificationsStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationsStateData? data});

  @override
  $NotificationsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Initial(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationsStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final NotificationsStateData? data;

  @override
  String toString() {
    return 'NotificationsState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsStateData? data) initial,
    required TResult Function(NotificationsStateData? data) getNotifications,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsStateData? data)? initial,
    TResult? Function(NotificationsStateData? data)? getNotifications,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsStateData? data)? initial,
    TResult Function(NotificationsStateData? data)? getNotifications,
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
    required TResult Function(Initial value) initial,
    required TResult Function(GetNotifications value) getNotifications,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetNotifications value)? getNotifications,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotificationsState {
  const factory Initial({final NotificationsStateData? data}) = _$Initial;

  @override
  NotificationsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetNotificationsCopyWith<$Res>
    implements $NotificationsStateCopyWith<$Res> {
  factory _$$GetNotificationsCopyWith(
          _$GetNotifications value, $Res Function(_$GetNotifications) then) =
      __$$GetNotificationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NotificationsStateData? data});

  @override
  $NotificationsStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetNotificationsCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$GetNotifications>
    implements _$$GetNotificationsCopyWith<$Res> {
  __$$GetNotificationsCopyWithImpl(
      _$GetNotifications _value, $Res Function(_$GetNotifications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetNotifications(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotificationsStateData?,
    ));
  }
}

/// @nodoc

class _$GetNotifications implements GetNotifications {
  const _$GetNotifications({this.data});

  @override
  final NotificationsStateData? data;

  @override
  String toString() {
    return 'NotificationsState.getNotifications(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetNotifications &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetNotificationsCopyWith<_$GetNotifications> get copyWith =>
      __$$GetNotificationsCopyWithImpl<_$GetNotifications>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NotificationsStateData? data) initial,
    required TResult Function(NotificationsStateData? data) getNotifications,
  }) {
    return getNotifications(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotificationsStateData? data)? initial,
    TResult? Function(NotificationsStateData? data)? getNotifications,
  }) {
    return getNotifications?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotificationsStateData? data)? initial,
    TResult Function(NotificationsStateData? data)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(GetNotifications value) getNotifications,
  }) {
    return getNotifications(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(GetNotifications value)? getNotifications,
  }) {
    return getNotifications?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(GetNotifications value)? getNotifications,
    required TResult orElse(),
  }) {
    if (getNotifications != null) {
      return getNotifications(this);
    }
    return orElse();
  }
}

abstract class GetNotifications implements NotificationsState {
  const factory GetNotifications({final NotificationsStateData? data}) =
      _$GetNotifications;

  @override
  NotificationsStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetNotificationsCopyWith<_$GetNotifications> get copyWith =>
      throw _privateConstructorUsedError;
}
