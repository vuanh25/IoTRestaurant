// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserStateData {
  StatusType get status => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;
  List<UserItem> get users => throw _privateConstructorUsedError;
  UserItem? get user => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateDataCopyWith<UserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateDataCopyWith<$Res> {
  factory $UserStateDataCopyWith(
          UserStateData value, $Res Function(UserStateData) then) =
      _$UserStateDataCopyWithImpl<$Res, UserStateData>;
  @useResult
  $Res call(
      {StatusType status, int? page, List<UserItem> users, UserItem? user});
}

/// @nodoc
class _$UserStateDataCopyWithImpl<$Res, $Val extends UserStateData>
    implements $UserStateDataCopyWith<$Res> {
  _$UserStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? page = freezed,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserStateDataCopyWith<$Res>
    implements $UserStateDataCopyWith<$Res> {
  factory _$$_UserStateDataCopyWith(
          _$_UserStateData value, $Res Function(_$_UserStateData) then) =
      __$$_UserStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusType status, int? page, List<UserItem> users, UserItem? user});
}

/// @nodoc
class __$$_UserStateDataCopyWithImpl<$Res>
    extends _$UserStateDataCopyWithImpl<$Res, _$_UserStateData>
    implements _$$_UserStateDataCopyWith<$Res> {
  __$$_UserStateDataCopyWithImpl(
      _$_UserStateData _value, $Res Function(_$_UserStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? page = freezed,
    Object? users = null,
    Object? user = freezed,
  }) {
    return _then(_$_UserStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserItem>,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserItem?,
    ));
  }
}

/// @nodoc

class _$_UserStateData implements _UserStateData {
  const _$_UserStateData(
      {this.status = StatusType.init,
      this.page = 0,
      final List<UserItem> users = const [],
      this.user})
      : _users = users;

  @override
  @JsonKey()
  final StatusType status;
  @override
  @JsonKey()
  final int? page;
  final List<UserItem> _users;
  @override
  @JsonKey()
  List<UserItem> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  final UserItem? user;

  @override
  String toString() {
    return 'UserStateData(status: $status, page: $page, users: $users, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserStateData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, page,
      const DeepCollectionEquality().hash(_users), user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      __$$_UserStateDataCopyWithImpl<_$_UserStateData>(this, _$identity);
}

abstract class _UserStateData implements UserStateData {
  const factory _UserStateData(
      {final StatusType status,
      final int? page,
      final List<UserItem> users,
      final UserItem? user}) = _$_UserStateData;

  @override
  StatusType get status;
  @override
  int? get page;
  @override
  List<UserItem> get users;
  @override
  UserItem? get user;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateDataCopyWith<_$_UserStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  UserStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserStateData? data) initial,
    required TResult Function(UserStateData? data) getUsers,
    required TResult Function(UserStateData? data) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStateData? data)? initial,
    TResult? Function(UserStateData? data)? getUsers,
    TResult? Function(UserStateData? data)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStateData? data)? initial,
    TResult Function(UserStateData? data)? getUsers,
    TResult Function(UserStateData? data)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(GetUser value) getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(GetUser value)? getUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetUsers value)? getUsers,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({UserStateData? data});

  $UserStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

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
              as UserStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $UserStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InititalCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$InititalCopyWith(
          _$Initital value, $Res Function(_$Initital) then) =
      __$$InititalCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStateData? data});

  @override
  $UserStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InititalCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$Initital>
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
              as UserStateData?,
    ));
  }
}

/// @nodoc

class _$Initital implements Initital {
  const _$Initital({this.data});

  @override
  final UserStateData? data;

  @override
  String toString() {
    return 'UserState.initial(data: $data)';
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
    required TResult Function(UserStateData? data) initial,
    required TResult Function(UserStateData? data) getUsers,
    required TResult Function(UserStateData? data) getUser,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStateData? data)? initial,
    TResult? Function(UserStateData? data)? getUsers,
    TResult? Function(UserStateData? data)? getUser,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStateData? data)? initial,
    TResult Function(UserStateData? data)? getUsers,
    TResult Function(UserStateData? data)? getUser,
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
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(GetUser value) getUser,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(GetUser value)? getUser,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetUsers value)? getUsers,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initital implements UserState {
  const factory Initital({final UserStateData? data}) = _$Initital;

  @override
  UserStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InititalCopyWith<_$Initital> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUsersCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$GetUsersCopyWith(
          _$GetUsers value, $Res Function(_$GetUsers) then) =
      __$$GetUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStateData? data});

  @override
  $UserStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUsersCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUsers>
    implements _$$GetUsersCopyWith<$Res> {
  __$$GetUsersCopyWithImpl(_$GetUsers _value, $Res Function(_$GetUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUsers(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserStateData?,
    ));
  }
}

/// @nodoc

class _$GetUsers implements GetUsers {
  const _$GetUsers({this.data});

  @override
  final UserStateData? data;

  @override
  String toString() {
    return 'UserState.getUsers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUsers &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUsersCopyWith<_$GetUsers> get copyWith =>
      __$$GetUsersCopyWithImpl<_$GetUsers>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserStateData? data) initial,
    required TResult Function(UserStateData? data) getUsers,
    required TResult Function(UserStateData? data) getUser,
  }) {
    return getUsers(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStateData? data)? initial,
    TResult? Function(UserStateData? data)? getUsers,
    TResult? Function(UserStateData? data)? getUser,
  }) {
    return getUsers?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStateData? data)? initial,
    TResult Function(UserStateData? data)? getUsers,
    TResult Function(UserStateData? data)? getUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(GetUser value) getUser,
  }) {
    return getUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetUsers value)? getUsers,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUsers != null) {
      return getUsers(this);
    }
    return orElse();
  }
}

abstract class GetUsers implements UserState {
  const factory GetUsers({final UserStateData? data}) = _$GetUsers;

  @override
  UserStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUsersCopyWith<_$GetUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUserCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$GetUserCopyWith(_$GetUser value, $Res Function(_$GetUser) then) =
      __$$GetUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserStateData? data});

  @override
  $UserStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetUserCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$GetUser>
    implements _$$GetUserCopyWith<$Res> {
  __$$GetUserCopyWithImpl(_$GetUser _value, $Res Function(_$GetUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetUser(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserStateData?,
    ));
  }
}

/// @nodoc

class _$GetUser implements GetUser {
  const _$GetUser({this.data});

  @override
  final UserStateData? data;

  @override
  String toString() {
    return 'UserState.getUser(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUser &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserCopyWith<_$GetUser> get copyWith =>
      __$$GetUserCopyWithImpl<_$GetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserStateData? data) initial,
    required TResult Function(UserStateData? data) getUsers,
    required TResult Function(UserStateData? data) getUser,
  }) {
    return getUser(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserStateData? data)? initial,
    TResult? Function(UserStateData? data)? getUsers,
    TResult? Function(UserStateData? data)? getUser,
  }) {
    return getUser?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserStateData? data)? initial,
    TResult Function(UserStateData? data)? getUsers,
    TResult Function(UserStateData? data)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initital value) initial,
    required TResult Function(GetUsers value) getUsers,
    required TResult Function(GetUser value) getUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initital value)? initial,
    TResult? Function(GetUsers value)? getUsers,
    TResult? Function(GetUser value)? getUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initital value)? initial,
    TResult Function(GetUsers value)? getUsers,
    TResult Function(GetUser value)? getUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class GetUser implements UserState {
  const factory GetUser({final UserStateData? data}) = _$GetUser;

  @override
  UserStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetUserCopyWith<_$GetUser> get copyWith =>
      throw _privateConstructorUsedError;
}
