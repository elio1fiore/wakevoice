import 'dart:io';

import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:intl/intl.dart';
import 'package:path/path.dart' as p;
import 'package:record/record.dart';

class InsertScreen extends StatefulWidget {
  const InsertScreen({super.key});

  @override
  State<InsertScreen> createState() => _InsertScreenState();
}

class _InsertScreenState extends State<InsertScreen> {
  final AudioRecorder audioRecorder = AudioRecorder();
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isRecording = false, isPlaying = false;
  String? recordingPath;

  FormGroup buildForm() => fb.group(
        <String, Object>{
          'date': FormControl<DateTime>(value: null),
          'time': FormControl<TimeOfDay>(value: null),
          'note': FormControl<String>(value: ""),
        },
      );

  late FocusNode _focusNode;

  @override
  void initState() {
    _focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  final List<String> giorni = ['L', 'M', 'M', 'G', 'V', 'S', 'D'];
  List<bool> isSelected = List.generate(7, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: ReactiveFormBuilder(
          form: buildForm,
          builder: (context, formGroup, child) {
            return Column(
              children: [
                ReactiveTextField<TimeOfDay>(
                  formControlName: 'time',
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'Birthday time',
                    suffixIcon: ReactiveTimePicker(
                      formControlName: 'time',
                      builder: (context, picker, child) {
                        return IconButton(
                          onPressed: picker.showPicker,
                          icon: const Icon(Icons.access_time),
                        );
                      },
                    ),
                  ),
                ),
                //V2
                // Row(
                //   children: List<Widget>.generate(giorni.length, (int index) {
                //     return Padding(
                //       padding: const EdgeInsets.symmetric(
                //           vertical: 4.0, horizontal: 4),
                //       child: FilterChip(
                //         label: Text(giorni[index]),
                //         selected: isSelected[index],
                //         onSelected: (bool selected) {
                //           setState(() {
                //             isSelected[index] = selected;
                //           });
                //         },
                //       ),
                //     );
                //   }),
                // ),
                ReactiveDatePicker<DateTime>(
                  formControlName: 'date',
                  firstDate: DateTime(1985),
                  lastDate: DateTime(2030),
                  builder: (context, picker, child) {
                    Widget suffix = InkWell(
                      onTap: () {
                        // workaround until https://github.com/flutter/flutter/issues/39376
                        // will be fixed

                        // Unfocus all focus nodes
                        _focusNode.unfocus();

                        // Disable text field's focus node request
                        _focusNode.canRequestFocus = false;

                        // clear field value
                        picker.control.value = null;

                        //Enable the text field's focus node request after some delay
                        Future.delayed(const Duration(milliseconds: 100), () {
                          _focusNode.canRequestFocus = true;
                        });
                      },
                      child: const Icon(Icons.clear),
                    );

                    if (picker.value == null) {
                      suffix = const Icon(Icons.calendar_today);
                    }

                    return ReactiveTextField(
                      onTap: (_) {
                        if (_focusNode.canRequestFocus) {
                          _focusNode.unfocus();
                          picker.showPicker();
                        }
                      },
                      valueAccessor: DateTimeValueAccessor(
                        dateTimeFormat: DateFormat('dd MMM yyyy'),
                      ),
                      focusNode: _focusNode,
                      formControlName: 'date',
                      readOnly: true,
                      decoration: InputDecoration(
                        labelText: 'Giorno dal calendario',
                        suffixIcon: suffix,
                      ),
                    );
                  },
                ),
                ReactiveTextField(
                  formControlName: 'note',
                ),
                ElevatedButton(
                  child: isRecording
                      ? const Text("Stop")
                      : const Text("Recording"),
                  // child: const Text("Audio recording"),
                  onPressed: () async {
                    if (isRecording) {
                      String? filePath = await audioRecorder.stop();
                      if (filePath != null) {
                        setState(() {
                          isRecording = false;
                          recordingPath = filePath;
                        });
                      }
                    } else {
                      if (await audioRecorder.hasPermission()) {
                        final Directory dir =
                            await getApplicationDocumentsDirectory();

                        final String filePath =
                            p.join(dir.path, "recording.wav");

                        await audioRecorder.start(const RecordConfig(),
                            path: filePath);

                        setState(() {
                          isRecording = true;
                          recordingPath = null;
                        });
                      }
                    }
                  },
                ),
                if (recordingPath != null)
                  ElevatedButton(
                    child: isPlaying
                        ? const Text("Stop Riproduzione")
                        : const Text("Riproduci"),
                    onPressed: () async {
                      if (audioPlayer.playing) {
                        audioPlayer.stop();
                        setState(() {
                          isPlaying = false;
                        });
                      } else {
                        await audioPlayer.setFilePath(recordingPath!);
                        audioPlayer.play();
                        setState(() {
                          isPlaying = true;
                        });
                      }
                    },
                  ),
                if (recordingPath == null)
                  const Text("Audio vocale non inserito")
              ],
            );
          },
        ),
      ),
    );
  }
}
