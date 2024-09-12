import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wakevoice/core/domain/audio.dart';
import 'package:wakevoice/utils/time_of_day_converter.dart';

part 'audio_entity.freezed.dart';
part 'audio_entity.g.dart';

@freezed
class AudioEntity with _$AudioEntity {
  const AudioEntity._();

  const factory AudioEntity({
    @JsonKey(name: '_id') int? id,
    required String title,
    required DateTime date,
    @TimeOfDayConverter() required TimeOfDay time,
    required String recordingPath,
    required String note,
    required int dateTime,
  }) = _AudioEntity;

  factory AudioEntity.fromJson(Map<String, dynamic> json) =>
      _$AudioEntityFromJson(json);

  Audio toDomain() {
    return Audio(
      date: DateTime.fromMicrosecondsSinceEpoch(dateTime),
      recordingPath: recordingPath,
      time: time,
      title: title,
      id: id,
      note: note,
    );
  }

  factory AudioEntity.fromDomain(Audio audio) {
    String formattedDate =
        "${audio.date.day.toString().padLeft(2, '0')}-${audio.date.month.toString().padLeft(2, '0')}-${audio.date.year.toString().substring(2)}";

    String formattedTime =
        "${audio.time.hour.toString().padLeft(2, '0')}:${audio.time.minute.toString().padLeft(2, '0')}";

    String title = "Registrazione $formattedDate - $formattedTime";
    int currentTimestamp = DateTime.now().millisecondsSinceEpoch;

    return AudioEntity(
      dateTime: currentTimestamp,
      date: audio.date,
      note: audio.note ?? "",
      recordingPath: audio.recordingPath,
      time: audio.time,
      title: title,
    );
  }
}
