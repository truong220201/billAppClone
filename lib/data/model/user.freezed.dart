// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'userId')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'username')
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'dayBuy')
  String get dayBuy => throw _privateConstructorUsedError;
  @JsonKey(name: 'dayEnd')
  String get dayEnd => throw _privateConstructorUsedError;
  @JsonKey(name: 'convertCount')
  int? get convertCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalFileConvert')
  int get totalFileConvert => throw _privateConstructorUsedError;
  @JsonKey(name: 'refreshToken')
  String get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'createdAt')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'dayBuy') String dayBuy,
      @JsonKey(name: 'dayEnd') String dayEnd,
      @JsonKey(name: 'convertCount') int? convertCount,
      @JsonKey(name: 'totalFileConvert') int totalFileConvert,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? dayBuy = null,
    Object? dayEnd = null,
    Object? convertCount = freezed,
    Object? totalFileConvert = null,
    Object? refreshToken = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dayBuy: null == dayBuy
          ? _value.dayBuy
          : dayBuy // ignore: cast_nullable_to_non_nullable
              as String,
      dayEnd: null == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as String,
      convertCount: freezed == convertCount
          ? _value.convertCount
          : convertCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFileConvert: null == totalFileConvert
          ? _value.totalFileConvert
          : totalFileConvert // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'userId') int userId,
      @JsonKey(name: 'username') String username,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'dayBuy') String dayBuy,
      @JsonKey(name: 'dayEnd') String dayEnd,
      @JsonKey(name: 'convertCount') int? convertCount,
      @JsonKey(name: 'totalFileConvert') int totalFileConvert,
      @JsonKey(name: 'refreshToken') String refreshToken,
      @JsonKey(name: 'createdAt') String createdAt});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? username = null,
    Object? email = null,
    Object? password = null,
    Object? status = null,
    Object? dayBuy = null,
    Object? dayEnd = null,
    Object? convertCount = freezed,
    Object? totalFileConvert = null,
    Object? refreshToken = null,
    Object? createdAt = null,
  }) {
    return _then(_$_User(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      dayBuy: null == dayBuy
          ? _value.dayBuy
          : dayBuy // ignore: cast_nullable_to_non_nullable
              as String,
      dayEnd: null == dayEnd
          ? _value.dayEnd
          : dayEnd // ignore: cast_nullable_to_non_nullable
              as String,
      convertCount: freezed == convertCount
          ? _value.convertCount
          : convertCount // ignore: cast_nullable_to_non_nullable
              as int?,
      totalFileConvert: null == totalFileConvert
          ? _value.totalFileConvert
          : totalFileConvert // ignore: cast_nullable_to_non_nullable
              as int,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User extends _User {
  const _$_User(
      {@JsonKey(name: 'userId') this.userId = 0,
      @JsonKey(name: 'username') this.username = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'status') this.status = '',
      @JsonKey(name: 'dayBuy') this.dayBuy = '',
      @JsonKey(name: 'dayEnd') this.dayEnd = '',
      @JsonKey(name: 'convertCount') this.convertCount = 0,
      @JsonKey(name: 'totalFileConvert') this.totalFileConvert = 0,
      @JsonKey(name: 'refreshToken') this.refreshToken = '',
      @JsonKey(name: 'createdAt') this.createdAt = ''})
      : super._();

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'userId')
  final int userId;
  @override
  @JsonKey(name: 'username')
  final String username;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'dayBuy')
  final String dayBuy;
  @override
  @JsonKey(name: 'dayEnd')
  final String dayEnd;
  @override
  @JsonKey(name: 'convertCount')
  final int? convertCount;
  @override
  @JsonKey(name: 'totalFileConvert')
  final int totalFileConvert;
  @override
  @JsonKey(name: 'refreshToken')
  final String refreshToken;
  @override
  @JsonKey(name: 'createdAt')
  final String createdAt;

  @override
  String toString() {
    return 'User(userId: $userId, username: $username, email: $email, password: $password, status: $status, dayBuy: $dayBuy, dayEnd: $dayEnd, convertCount: $convertCount, totalFileConvert: $totalFileConvert, refreshToken: $refreshToken, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.dayBuy, dayBuy) || other.dayBuy == dayBuy) &&
            (identical(other.dayEnd, dayEnd) || other.dayEnd == dayEnd) &&
            (identical(other.convertCount, convertCount) ||
                other.convertCount == convertCount) &&
            (identical(other.totalFileConvert, totalFileConvert) ||
                other.totalFileConvert == totalFileConvert) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      username,
      email,
      password,
      status,
      dayBuy,
      dayEnd,
      convertCount,
      totalFileConvert,
      refreshToken,
      createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User extends User {
  const factory _User(
      {@JsonKey(name: 'userId') final int userId,
      @JsonKey(name: 'username') final String username,
      @JsonKey(name: 'email') final String email,
      @JsonKey(name: 'password') final String password,
      @JsonKey(name: 'status') final String status,
      @JsonKey(name: 'dayBuy') final String dayBuy,
      @JsonKey(name: 'dayEnd') final String dayEnd,
      @JsonKey(name: 'convertCount') final int? convertCount,
      @JsonKey(name: 'totalFileConvert') final int totalFileConvert,
      @JsonKey(name: 'refreshToken') final String refreshToken,
      @JsonKey(name: 'createdAt') final String createdAt}) = _$_User;
  const _User._() : super._();

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'userId')
  int get userId;
  @override
  @JsonKey(name: 'username')
  String get username;
  @override
  @JsonKey(name: 'email')
  String get email;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'status')
  String get status;
  @override
  @JsonKey(name: 'dayBuy')
  String get dayBuy;
  @override
  @JsonKey(name: 'dayEnd')
  String get dayEnd;
  @override
  @JsonKey(name: 'convertCount')
  int? get convertCount;
  @override
  @JsonKey(name: 'totalFileConvert')
  int get totalFileConvert;
  @override
  @JsonKey(name: 'refreshToken')
  String get refreshToken;
  @override
  @JsonKey(name: 'createdAt')
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
