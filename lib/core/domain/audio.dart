import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio.freezed.dart';

@freezed
class Audio with _$Audio {
  const factory Audio({
    int? id,
    required String title,
    required DateTime date,
    required TimeOfDay time,
    required String recordingPath,
    String? note,
  }) = _Audio;
}
