// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioEntityImpl _$$AudioEntityImplFromJson(Map<String, dynamic> json) =>
    _$AudioEntityImpl(
      id: (json['_id'] as num?)?.toInt(),
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      time: const TimeOfDayConverter().fromJson(json['time'] as String),
      recordingPath: json['recordingPath'] as String,
      note: json['note'] as String,
    );

Map<String, dynamic> _$$AudioEntityImplToJson(_$AudioEntityImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'time': const TimeOfDayConverter().toJson(instance.time),
      'recordingPath': instance.recordingPath,
      'note': instance.note,
    };
