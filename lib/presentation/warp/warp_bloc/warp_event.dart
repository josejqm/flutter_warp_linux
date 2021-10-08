import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'warp_event.freezed.dart';

@freezed
abstract class WarpEvent with _$WarpEvent {
  const factory WarpEvent.connect() = _Connect;

  const factory WarpEvent.disconnect() = _Disconnect;
}
