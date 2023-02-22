// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_page_reponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListTotalResponse _$$_ListTotalResponseFromJson(Map<String, dynamic> json) =>
    _$_ListTotalResponse(
      total1: (json['total1'] as num?)?.toDouble() ?? .0,
      total1Name: json['total1Name'] as String? ?? 'false',
      total2: (json['total2'] as num?)?.toDouble() ?? .0,
      total2Name: json['total2Name'] as String? ?? 'false',
      total3: (json['total3'] as num?)?.toDouble() ?? .0,
      total3Name: json['total3Name'] as String? ?? 'false',
      total4: (json['total4'] as num?)?.toDouble() ?? .0,
      total4Name: json['total4Name'] as String? ?? 'false',
    );

Map<String, dynamic> _$$_ListTotalResponseToJson(
        _$_ListTotalResponse instance) =>
    <String, dynamic>{
      'total1': instance.total1,
      'total1Name': instance.total1Name,
      'total2': instance.total2,
      'total2Name': instance.total2Name,
      'total3': instance.total3,
      'total3Name': instance.total3Name,
      'total4': instance.total4,
      'total4Name': instance.total4Name,
    };

_$_Pageable _$$_PageableFromJson(Map<String, dynamic> json) => _$_Pageable(
      offset: json['offset'] as int? ?? 0,
      pageNumber: json['pageNumber'] as int? ?? 0,
      pageSize: json['pageSize'] as int? ?? 0,
      paged: json['paged'] as bool? ?? false,
      sort: json['sort'] == null
          ? const Sort()
          : Sort.fromJson(json['sort'] as Map<String, dynamic>),
      unpaged: json['unpaged'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PageableToJson(_$_Pageable instance) =>
    <String, dynamic>{
      'offset': instance.offset,
      'pageNumber': instance.pageNumber,
      'pageSize': instance.pageSize,
      'paged': instance.paged,
      'sort': instance.sort,
      'unpaged': instance.unpaged,
    };

_$_Sort _$$_SortFromJson(Map<String, dynamic> json) => _$_Sort(
      sorted: json['sorted'] as bool? ?? false,
      unsorted: json['unsorted'] as bool? ?? false,
    );

Map<String, dynamic> _$$_SortToJson(_$_Sort instance) => <String, dynamic>{
      'sorted': instance.sorted,
      'unsorted': instance.unsorted,
    };
