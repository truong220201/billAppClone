import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    @JsonKey(name: 'userId') @Default(0) int userId,
    @JsonKey(name: 'username') @Default('') String username,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'password') @Default('') String password,
    @JsonKey(name: 'status') @Default('') String status,
    @JsonKey(name: 'dayBuy') @Default('') String dayBuy,
    @JsonKey(name: 'dayEnd') @Default('') String dayEnd,
    @JsonKey(name: 'convertCount') @Default(0) int? convertCount,
    @JsonKey(name: 'totalFileConvert') @Default(0) int totalFileConvert,
    @JsonKey(name: 'refreshToken') @Default('') String refreshToken,
    @JsonKey(name: 'createdAt') @Default('') String createdAt,
  }) = _User;

  // To JSON
  const User._();

  // From JSON
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
