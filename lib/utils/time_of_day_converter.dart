import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class TimeOfDayConverter implements JsonConverter<TimeOfDay, String> {
  const TimeOfDayConverter();

  @override
  TimeOfDay fromJson(String json) {
    final timeParts = json.split(':');
    return TimeOfDay(
        hour: int.parse(timeParts[0]), minute: int.parse(timeParts[1]));
  }

  @override
  String toJson(TimeOfDay time) =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
}
