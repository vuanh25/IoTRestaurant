// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_link_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetLinkStateData {
  StatusType get status => throw _privateConstructorUsedError;
  List<Link> get links => throw _privateConstructorUsedError;
  String get html =>
      throw _privateConstructorUsedError; // @Default([]) List<Transaction> transactions,
  Link? get link => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLinkStateDataCopyWith<GetLinkStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLinkStateDataCopyWith<$Res> {
  factory $GetLinkStateDataCopyWith(
          GetLinkStateData value, $Res Function(GetLinkStateData) then) =
      _$GetLinkStateDataCopyWithImpl<$Res, GetLinkStateData>;
  @useResult
  $Res call({StatusType status, List<Link> links, String html, Link? link});
}

/// @nodoc
class _$GetLinkStateDataCopyWithImpl<$Res, $Val extends GetLinkStateData>
    implements $GetLinkStateDataCopyWith<$Res> {
  _$GetLinkStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? links = null,
    Object? html = null,
    Object? link = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      links: null == links
          ? _value.links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetLinkStateDataCopyWith<$Res>
    implements $GetLinkStateDataCopyWith<$Res> {
  factory _$$_GetLinkStateDataCopyWith(
          _$_GetLinkStateData value, $Res Function(_$_GetLinkStateData) then) =
      __$$_GetLinkStateDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusType status, List<Link> links, String html, Link? link});
}

/// @nodoc
class __$$_GetLinkStateDataCopyWithImpl<$Res>
    extends _$GetLinkStateDataCopyWithImpl<$Res, _$_GetLinkStateData>
    implements _$$_GetLinkStateDataCopyWith<$Res> {
  __$$_GetLinkStateDataCopyWithImpl(
      _$_GetLinkStateData _value, $Res Function(_$_GetLinkStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? links = null,
    Object? html = null,
    Object? link = freezed,
  }) {
    return _then(_$_GetLinkStateData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusType,
      links: null == links
          ? _value._links
          : links // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      html: null == html
          ? _value.html
          : html // ignore: cast_nullable_to_non_nullable
              as String,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Link?,
    ));
  }
}

/// @nodoc

class _$_GetLinkStateData implements _GetLinkStateData {
  const _$_GetLinkStateData(
      {this.status = StatusType.init,
      final List<Link> links = const [],
      this.html = '',
      this.link})
      : _links = links;

  @override
  @JsonKey()
  final StatusType status;
  final List<Link> _links;
  @override
  @JsonKey()
  List<Link> get links {
    if (_links is EqualUnmodifiableListView) return _links;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_links);
  }

  @override
  @JsonKey()
  final String html;
// @Default([]) List<Transaction> transactions,
  @override
  final Link? link;

  @override
  String toString() {
    return 'GetLinkStateData(status: $status, links: $links, html: $html, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetLinkStateData &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._links, _links) &&
            (identical(other.html, html) || other.html == html) &&
            (identical(other.link, link) || other.link == link));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_links), html, link);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetLinkStateDataCopyWith<_$_GetLinkStateData> get copyWith =>
      __$$_GetLinkStateDataCopyWithImpl<_$_GetLinkStateData>(this, _$identity);
}

abstract class _GetLinkStateData implements GetLinkStateData {
  const factory _GetLinkStateData(
      {final StatusType status,
      final List<Link> links,
      final String html,
      final Link? link}) = _$_GetLinkStateData;

  @override
  StatusType get status;
  @override
  List<Link> get links;
  @override
  String get html;
  @override // @Default([]) List<Transaction> transactions,
  Link? get link;
  @override
  @JsonKey(ignore: true)
  _$$_GetLinkStateDataCopyWith<_$_GetLinkStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetLinkState {
  GetLinkStateData? get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetLinkStateData? data) initial,
    required TResult Function(GetLinkStateData? data) status,
    required TResult Function(GetLinkStateData? data) getLinks,
    required TResult Function(GetLinkStateData? data) getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetLinkStateData? data)? initial,
    TResult? Function(GetLinkStateData? data)? status,
    TResult? Function(GetLinkStateData? data)? getLinks,
    TResult? Function(GetLinkStateData? data)? getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetLinkStateData? data)? initial,
    TResult Function(GetLinkStateData? data)? status,
    TResult Function(GetLinkStateData? data)? getLinks,
    TResult Function(GetLinkStateData? data)? getLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLinks value) getLinks,
    required TResult Function(GetLink value) getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLinks value)? getLinks,
    TResult? Function(GetLink value)? getLink,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLinks value)? getLinks,
    TResult Function(GetLink value)? getLink,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetLinkStateCopyWith<GetLinkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetLinkStateCopyWith<$Res> {
  factory $GetLinkStateCopyWith(
          GetLinkState value, $Res Function(GetLinkState) then) =
      _$GetLinkStateCopyWithImpl<$Res, GetLinkState>;
  @useResult
  $Res call({GetLinkStateData? data});

  $GetLinkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetLinkStateCopyWithImpl<$Res, $Val extends GetLinkState>
    implements $GetLinkStateCopyWith<$Res> {
  _$GetLinkStateCopyWithImpl(this._value, this._then);

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
              as GetLinkStateData?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetLinkStateDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $GetLinkStateDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> implements $GetLinkStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetLinkStateData? data});

  @override
  $GetLinkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$GetLinkStateCopyWithImpl<$Res, _$Initial>
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
              as GetLinkStateData?,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial({this.data});

  @override
  final GetLinkStateData? data;

  @override
  String toString() {
    return 'GetLinkState.initial(data: $data)';
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
    required TResult Function(GetLinkStateData? data) initial,
    required TResult Function(GetLinkStateData? data) status,
    required TResult Function(GetLinkStateData? data) getLinks,
    required TResult Function(GetLinkStateData? data) getLink,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetLinkStateData? data)? initial,
    TResult? Function(GetLinkStateData? data)? status,
    TResult? Function(GetLinkStateData? data)? getLinks,
    TResult? Function(GetLinkStateData? data)? getLink,
  }) {
    return initial?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetLinkStateData? data)? initial,
    TResult Function(GetLinkStateData? data)? status,
    TResult Function(GetLinkStateData? data)? getLinks,
    TResult Function(GetLinkStateData? data)? getLink,
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
    required TResult Function(Status value) status,
    required TResult Function(GetLinks value) getLinks,
    required TResult Function(GetLink value) getLink,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLinks value)? getLinks,
    TResult? Function(GetLink value)? getLink,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLinks value)? getLinks,
    TResult Function(GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements GetLinkState {
  const factory Initial({final GetLinkStateData? data}) = _$Initial;

  @override
  GetLinkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StatusCopyWith<$Res> implements $GetLinkStateCopyWith<$Res> {
  factory _$$StatusCopyWith(_$Status value, $Res Function(_$Status) then) =
      __$$StatusCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetLinkStateData? data});

  @override
  $GetLinkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$StatusCopyWithImpl<$Res>
    extends _$GetLinkStateCopyWithImpl<$Res, _$Status>
    implements _$$StatusCopyWith<$Res> {
  __$$StatusCopyWithImpl(_$Status _value, $Res Function(_$Status) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$Status(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetLinkStateData?,
    ));
  }
}

/// @nodoc

class _$Status implements Status {
  const _$Status({this.data});

  @override
  final GetLinkStateData? data;

  @override
  String toString() {
    return 'GetLinkState.status(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Status &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusCopyWith<_$Status> get copyWith =>
      __$$StatusCopyWithImpl<_$Status>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetLinkStateData? data) initial,
    required TResult Function(GetLinkStateData? data) status,
    required TResult Function(GetLinkStateData? data) getLinks,
    required TResult Function(GetLinkStateData? data) getLink,
  }) {
    return status(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetLinkStateData? data)? initial,
    TResult? Function(GetLinkStateData? data)? status,
    TResult? Function(GetLinkStateData? data)? getLinks,
    TResult? Function(GetLinkStateData? data)? getLink,
  }) {
    return status?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetLinkStateData? data)? initial,
    TResult Function(GetLinkStateData? data)? status,
    TResult Function(GetLinkStateData? data)? getLinks,
    TResult Function(GetLinkStateData? data)? getLink,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLinks value) getLinks,
    required TResult Function(GetLink value) getLink,
  }) {
    return status(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLinks value)? getLinks,
    TResult? Function(GetLink value)? getLink,
  }) {
    return status?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLinks value)? getLinks,
    TResult Function(GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (status != null) {
      return status(this);
    }
    return orElse();
  }
}

abstract class Status implements GetLinkState {
  const factory Status({final GetLinkStateData? data}) = _$Status;

  @override
  GetLinkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$StatusCopyWith<_$Status> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLinksCopyWith<$Res>
    implements $GetLinkStateCopyWith<$Res> {
  factory _$$GetLinksCopyWith(
          _$GetLinks value, $Res Function(_$GetLinks) then) =
      __$$GetLinksCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetLinkStateData? data});

  @override
  $GetLinkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLinksCopyWithImpl<$Res>
    extends _$GetLinkStateCopyWithImpl<$Res, _$GetLinks>
    implements _$$GetLinksCopyWith<$Res> {
  __$$GetLinksCopyWithImpl(_$GetLinks _value, $Res Function(_$GetLinks) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLinks(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetLinkStateData?,
    ));
  }
}

/// @nodoc

class _$GetLinks implements GetLinks {
  const _$GetLinks({this.data});

  @override
  final GetLinkStateData? data;

  @override
  String toString() {
    return 'GetLinkState.getLinks(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLinks &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLinksCopyWith<_$GetLinks> get copyWith =>
      __$$GetLinksCopyWithImpl<_$GetLinks>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetLinkStateData? data) initial,
    required TResult Function(GetLinkStateData? data) status,
    required TResult Function(GetLinkStateData? data) getLinks,
    required TResult Function(GetLinkStateData? data) getLink,
  }) {
    return getLinks(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetLinkStateData? data)? initial,
    TResult? Function(GetLinkStateData? data)? status,
    TResult? Function(GetLinkStateData? data)? getLinks,
    TResult? Function(GetLinkStateData? data)? getLink,
  }) {
    return getLinks?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetLinkStateData? data)? initial,
    TResult Function(GetLinkStateData? data)? status,
    TResult Function(GetLinkStateData? data)? getLinks,
    TResult Function(GetLinkStateData? data)? getLink,
    required TResult orElse(),
  }) {
    if (getLinks != null) {
      return getLinks(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLinks value) getLinks,
    required TResult Function(GetLink value) getLink,
  }) {
    return getLinks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLinks value)? getLinks,
    TResult? Function(GetLink value)? getLink,
  }) {
    return getLinks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLinks value)? getLinks,
    TResult Function(GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (getLinks != null) {
      return getLinks(this);
    }
    return orElse();
  }
}

abstract class GetLinks implements GetLinkState {
  const factory GetLinks({final GetLinkStateData? data}) = _$GetLinks;

  @override
  GetLinkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLinksCopyWith<_$GetLinks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetLinkCopyWith<$Res> implements $GetLinkStateCopyWith<$Res> {
  factory _$$GetLinkCopyWith(_$GetLink value, $Res Function(_$GetLink) then) =
      __$$GetLinkCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetLinkStateData? data});

  @override
  $GetLinkStateDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$GetLinkCopyWithImpl<$Res>
    extends _$GetLinkStateCopyWithImpl<$Res, _$GetLink>
    implements _$$GetLinkCopyWith<$Res> {
  __$$GetLinkCopyWithImpl(_$GetLink _value, $Res Function(_$GetLink) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetLink(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GetLinkStateData?,
    ));
  }
}

/// @nodoc

class _$GetLink implements GetLink {
  const _$GetLink({this.data});

  @override
  final GetLinkStateData? data;

  @override
  String toString() {
    return 'GetLinkState.getLink(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLink &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLinkCopyWith<_$GetLink> get copyWith =>
      __$$GetLinkCopyWithImpl<_$GetLink>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetLinkStateData? data) initial,
    required TResult Function(GetLinkStateData? data) status,
    required TResult Function(GetLinkStateData? data) getLinks,
    required TResult Function(GetLinkStateData? data) getLink,
  }) {
    return getLink(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetLinkStateData? data)? initial,
    TResult? Function(GetLinkStateData? data)? status,
    TResult? Function(GetLinkStateData? data)? getLinks,
    TResult? Function(GetLinkStateData? data)? getLink,
  }) {
    return getLink?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetLinkStateData? data)? initial,
    TResult Function(GetLinkStateData? data)? status,
    TResult Function(GetLinkStateData? data)? getLinks,
    TResult Function(GetLinkStateData? data)? getLink,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Status value) status,
    required TResult Function(GetLinks value) getLinks,
    required TResult Function(GetLink value) getLink,
  }) {
    return getLink(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? initial,
    TResult? Function(Status value)? status,
    TResult? Function(GetLinks value)? getLinks,
    TResult? Function(GetLink value)? getLink,
  }) {
    return getLink?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Status value)? status,
    TResult Function(GetLinks value)? getLinks,
    TResult Function(GetLink value)? getLink,
    required TResult orElse(),
  }) {
    if (getLink != null) {
      return getLink(this);
    }
    return orElse();
  }
}

abstract class GetLink implements GetLinkState {
  const factory GetLink({final GetLinkStateData? data}) = _$GetLink;

  @override
  GetLinkStateData? get data;
  @override
  @JsonKey(ignore: true)
  _$$GetLinkCopyWith<_$GetLink> get copyWith =>
      throw _privateConstructorUsedError;
}
