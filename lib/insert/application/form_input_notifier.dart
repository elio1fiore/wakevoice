import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_notifier.freezed.dart';

@freezed
class FormDataState with _$FormDataState {
  const factory FormDataState.init() = _Init;
  const factory FormDataState.save() = _Save;
  const factory FormDataState.progress() = _Progress;
  const factory FormDataState.notSave() = _NotSave;
}

class FormDataNotifier extends StateNotifier<FormDataState> {
  FormDataNotifier() : super(const FormDataState.init());
}
