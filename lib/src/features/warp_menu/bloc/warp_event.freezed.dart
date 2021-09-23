// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'warp_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WarpEventTearOff {
  const _$WarpEventTearOff();

  _Connect connect() {
    return const _Connect();
  }

  _Disconnect disconnect() {
    return const _Disconnect();
  }
}

/// @nodoc
const $WarpEvent = _$WarpEventTearOff();

/// @nodoc
mixin _$WarpEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarpEventCopyWith<$Res> {
  factory $WarpEventCopyWith(WarpEvent value, $Res Function(WarpEvent) then) =
      _$WarpEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpEventCopyWithImpl<$Res> implements $WarpEventCopyWith<$Res> {
  _$WarpEventCopyWithImpl(this._value, this._then);

  final WarpEvent _value;
  // ignore: unused_field
  final $Res Function(WarpEvent) _then;
}

/// @nodoc
abstract class _$ConnectCopyWith<$Res> {
  factory _$ConnectCopyWith(_Connect value, $Res Function(_Connect) then) =
      __$ConnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectCopyWithImpl<$Res> extends _$WarpEventCopyWithImpl<$Res>
    implements _$ConnectCopyWith<$Res> {
  __$ConnectCopyWithImpl(_Connect _value, $Res Function(_Connect) _then)
      : super(_value, (v) => _then(v as _Connect));

  @override
  _Connect get _value => super._value as _Connect;
}

/// @nodoc

class _$_Connect with DiagnosticableTreeMixin implements _Connect {
  const _$_Connect();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpEvent.connect()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpEvent.connect'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Connect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return connect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
  }) {
    return connect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return connect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
  }) {
    return connect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (connect != null) {
      return connect(this);
    }
    return orElse();
  }
}

abstract class _Connect implements WarpEvent {
  const factory _Connect() = _$_Connect;
}

/// @nodoc
abstract class _$DisconnectCopyWith<$Res> {
  factory _$DisconnectCopyWith(
          _Disconnect value, $Res Function(_Disconnect) then) =
      __$DisconnectCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectCopyWithImpl<$Res> extends _$WarpEventCopyWithImpl<$Res>
    implements _$DisconnectCopyWith<$Res> {
  __$DisconnectCopyWithImpl(
      _Disconnect _value, $Res Function(_Disconnect) _then)
      : super(_value, (v) => _then(v as _Disconnect));

  @override
  _Disconnect get _value => super._value as _Disconnect;
}

/// @nodoc

class _$_Disconnect with DiagnosticableTreeMixin implements _Disconnect {
  const _$_Disconnect();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpEvent.disconnect()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpEvent.disconnect'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Disconnect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connect,
    required TResult Function() disconnect,
  }) {
    return disconnect();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
  }) {
    return disconnect?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connect,
    TResult Function()? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connect value) connect,
    required TResult Function(_Disconnect value) disconnect,
  }) {
    return disconnect(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
  }) {
    return disconnect?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connect value)? connect,
    TResult Function(_Disconnect value)? disconnect,
    required TResult orElse(),
  }) {
    if (disconnect != null) {
      return disconnect(this);
    }
    return orElse();
  }
}

abstract class _Disconnect implements WarpEvent {
  const factory _Disconnect() = _$_Disconnect;
}
