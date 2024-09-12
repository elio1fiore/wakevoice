// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioEntity _$AudioEntityFromJson(Map<String, dynamic> json) {
  return _AudioEntity.fromJson(json);
}

/// @nodoc
mixin _$AudioEntity {
  @JsonKey(name: '_id')
  int? get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  @TimeOfDayConverter()
  TimeOfDay get time => throw _privateConstructorUsedError;
  String get recordingPath => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;

  /// Serializes this AudioEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioEntityCopyWith<AudioEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioEntityCopyWith<$Res> {
  factory $AudioEntityCopyWith(
          AudioEntity value, $Res Function(AudioEntity) then) =
      _$AudioEntityCopyWithImpl<$Res, AudioEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      String title,
      DateTime date,
      @TimeOfDayConverter() TimeOfDay time,
      String recordingPath,
      String note});
}

/// @nodoc
class _$AudioEntityCopyWithImpl<$Res, $Val extends AudioEntity>
    implements $AudioEntityCopyWith<$Res> {
  _$AudioEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? date = null,
    Object? time = null,
    Object? recordingPath = null,
    Object? note = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      recordingPath: null == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioEntityImplCopyWith<$Res>
    implements $AudioEntityCopyWith<$Res> {
  factory _$$AudioEntityImplCopyWith(
          _$AudioEntityImpl value, $Res Function(_$AudioEntityImpl) then) =
      __$$AudioEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: '_id') int? id,
      String title,
      DateTime date,
      @TimeOfDayConverter() TimeOfDay time,
      String recordingPath,
      String note});
}

/// @nodoc
class __$$AudioEntityImplCopyWithImpl<$Res>
    extends _$AudioEntityCopyWithImpl<$Res, _$AudioEntityImpl>
    implements _$$AudioEntityImplCopyWith<$Res> {
  __$$AudioEntityImplCopyWithImpl(
      _$AudioEntityImpl _value, $Res Function(_$AudioEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = null,
    Object? date = null,
    Object? time = null,
    Object? recordingPath = null,
    Object? note = null,
  }) {
    return _then(_$AudioEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      time: null == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      recordingPath: null == recordingPath
          ? _value.recordingPath
          : recordingPath // ignore: cast_nullable_to_non_nullable
              as String,
      note: null == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioEntityImpl extends _AudioEntity {
  const _$AudioEntityImpl(
      {@JsonKey(name: '_id') this.id,
      required this.title,
      required this.date,
      @TimeOfDayConverter() required this.time,
      required this.recordingPath,
      required this.note})
      : super._();

  factory _$AudioEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioEntityImplFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int? id;
  @override
  final String title;
  @override
  final DateTime date;
  @override
  @TimeOfDayConverter()
  final TimeOfDay time;
  @override
  final String recordingPath;
  @override
  final String note;

  @override
  String toString() {
    return 'AudioEntity(id: $id, title: $title, date: $date, time: $time, recordingPath: $recordingPath, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.recordingPath, recordingPath) ||
                other.recordingPath == recordingPath) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, date, time, recordingPath, note);

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioEntityImplCopyWith<_$AudioEntityImpl> get copyWith =>
      __$$AudioEntityImplCopyWithImpl<_$AudioEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioEntityImplToJson(
      this,
    );
  }
}

abstract class _AudioEntity extends AudioEntity {
  const factory _AudioEntity(
      {@JsonKey(name: '_id') final int? id,
      required final String title,
      required final DateTime date,
      @TimeOfDayConverter() required final TimeOfDay time,
      required final String recordingPath,
      required final String note}) = _$AudioEntityImpl;
  const _AudioEntity._() : super._();

  factory _AudioEntity.fromJson(Map<String, dynamic> json) =
      _$AudioEntityImpl.fromJson;

  @override
  @JsonKey(name: '_id')
  int? get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  @TimeOfDayConverter()
  TimeOfDay get time;
  @override
  String get recordingPath;
  @override
  String get note;

  /// Create a copy of AudioEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioEntityImplCopyWith<_$AudioEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
