// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as int? ?? 0,
      username: json['username'] as String? ?? '',
      email: json['email'] as String? ?? '',
      password: json['password'] as String? ?? '',
      status: json['status'] as String? ?? '',
      dayBuy: json['dayBuy'] as String? ?? '',
      dayEnd: json['dayEnd'] as String? ?? '',
      convertCount: json['convertCount'] as int? ?? 0,
      totalFileConvert: json['totalFileConvert'] as int? ?? 0,
      refreshToken: json['refreshToken'] as String? ?? '',
      createdAt: json['createdAt'] as String? ?? '',
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'username': instance.username,
      'email': instance.email,
      'password': instance.password,
      'status': instance.status,
      'dayBuy': instance.dayBuy,
      'dayEnd': instance.dayEnd,
      'convertCount': instance.convertCount,
      'totalFileConvert': instance.totalFileConvert,
      'refreshToken': instance.refreshToken,
      'createdAt': instance.createdAt,
    };
