// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalResponse<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDb<T> value) problemDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDb<T> value)? problemDb,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDb<T> value)? problemDb,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalResponseCopyWith<T, $Res> {
  factory $LocalResponseCopyWith(
          LocalResponse<T> value, $Res Function(LocalResponse<T>) then) =
      _$LocalResponseCopyWithImpl<T, $Res, LocalResponse<T>>;
}

/// @nodoc
class _$LocalResponseCopyWithImpl<T, $Res, $Val extends LocalResponse<T>>
    implements $LocalResponseCopyWith<T, $Res> {
  _$LocalResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocalResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WithNewDataImplCopyWith<T, $Res> {
  factory _$$WithNewDataImplCopyWith(_$WithNewDataImpl<T> value,
          $Res Function(_$WithNewDataImpl<T>) then) =
      __$$WithNewDataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data, int maxPage});
}

/// @nodoc
class __$$WithNewDataImplCopyWithImpl<T, $Res>
    extends _$LocalResponseCopyWithImpl<T, $Res, _$WithNewDataImpl<T>>
    implements _$$WithNewDataImplCopyWith<T, $Res> {
  __$$WithNewDataImplCopyWithImpl(
      _$WithNewDataImpl<T> _value, $Res Function(_$WithNewDataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocalResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? maxPage = null,
  }) {
    return _then(_$WithNewDataImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      maxPage: null == maxPage
          ? _value.maxPage
          : maxPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$WithNewDataImpl<T> implements _WithNewData<T> {
  const _$WithNewDataImpl(this.data, {required this.maxPage});

  @override
  final T data;
  @override
  final int maxPage;

  @override
  String toString() {
    return 'LocalResponse<$T>.withNewData(data: $data, maxPage: $maxPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WithNewDataImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.maxPage, maxPage) || other.maxPage == maxPage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), maxPage);

  /// Create a copy of LocalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      __$$WithNewDataImplCopyWithImpl<T, _$WithNewDataImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDb,
  }) {
    return withNewData(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDb,
  }) {
    return withNewData?.call(data, maxPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDb,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(data, maxPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDb<T> value) problemDb,
  }) {
    return withNewData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDb<T> value)? problemDb,
  }) {
    return withNewData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDb<T> value)? problemDb,
    required TResult orElse(),
  }) {
    if (withNewData != null) {
      return withNewData(this);
    }
    return orElse();
  }
}

abstract class _WithNewData<T> implements LocalResponse<T> {
  const factory _WithNewData(final T data, {required final int maxPage}) =
      _$WithNewDataImpl<T>;

  T get data;
  int get maxPage;

  /// Create a copy of LocalResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WithNewDataImplCopyWith<T, _$WithNewDataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProblemDbImplCopyWith<T, $Res> {
  factory _$$ProblemDbImplCopyWith(
          _$ProblemDbImpl<T> value, $Res Function(_$ProblemDbImpl<T>) then) =
      __$$ProblemDbImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ProblemDbImplCopyWithImpl<T, $Res>
    extends _$LocalResponseCopyWithImpl<T, $Res, _$ProblemDbImpl<T>>
    implements _$$ProblemDbImplCopyWith<T, $Res> {
  __$$ProblemDbImplCopyWithImpl(
      _$ProblemDbImpl<T> _value, $Res Function(_$ProblemDbImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of LocalResponse
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ProblemDbImpl<T> implements _ProblemDb<T> {
  const _$ProblemDbImpl();

  @override
  String toString() {
    return 'LocalResponse<$T>.problemDb()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProblemDbImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data, int maxPage) withNewData,
    required TResult Function() problemDb,
  }) {
    return problemDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data, int maxPage)? withNewData,
    TResult? Function()? problemDb,
  }) {
    return problemDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data, int maxPage)? withNewData,
    TResult Function()? problemDb,
    required TResult orElse(),
  }) {
    if (problemDb != null) {
      return problemDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WithNewData<T> value) withNewData,
    required TResult Function(_ProblemDb<T> value) problemDb,
  }) {
    return problemDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WithNewData<T> value)? withNewData,
    TResult? Function(_ProblemDb<T> value)? problemDb,
  }) {
    return problemDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WithNewData<T> value)? withNewData,
    TResult Function(_ProblemDb<T> value)? problemDb,
    required TResult orElse(),
  }) {
    if (problemDb != null) {
      return problemDb(this);
    }
    return orElse();
  }
}

abstract class _ProblemDb<T> implements LocalResponse<T> {
  const factory _ProblemDb() = _$ProblemDbImpl<T>;
}
