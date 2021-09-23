// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'warp_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WarpStateTearOff {
  const _$WarpStateTearOff();

  WarpStateConnected connected() {
    return const WarpStateConnected();
  }

  WarpStateConnecting connecting() {
    return const WarpStateConnecting();
  }

  WarpStateDisconnected disconnected() {
    return const WarpStateDisconnected();
  }

  WarpStateDisconnecting disconnecting() {
    return const WarpStateDisconnecting();
  }
}

/// @nodoc
const $WarpState = _$WarpStateTearOff();

/// @nodoc
mixin _$WarpState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() connecting,
    required TResult Function() disconnected,
    required TResult Function() disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarpStateConnected value) connected,
    required TResult Function(WarpStateConnecting value) connecting,
    required TResult Function(WarpStateDisconnected value) disconnected,
    required TResult Function(WarpStateDisconnecting value) disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarpStateCopyWith<$Res> {
  factory $WarpStateCopyWith(WarpState value, $Res Function(WarpState) then) =
      _$WarpStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpStateCopyWithImpl<$Res> implements $WarpStateCopyWith<$Res> {
  _$WarpStateCopyWithImpl(this._value, this._then);

  final WarpState _value;
  // ignore: unused_field
  final $Res Function(WarpState) _then;
}

/// @nodoc
abstract class $WarpStateConnectedCopyWith<$Res> {
  factory $WarpStateConnectedCopyWith(
          WarpStateConnected value, $Res Function(WarpStateConnected) then) =
      _$WarpStateConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpStateConnectedCopyWithImpl<$Res>
    extends _$WarpStateCopyWithImpl<$Res>
    implements $WarpStateConnectedCopyWith<$Res> {
  _$WarpStateConnectedCopyWithImpl(
      WarpStateConnected _value, $Res Function(WarpStateConnected) _then)
      : super(_value, (v) => _then(v as WarpStateConnected));

  @override
  WarpStateConnected get _value => super._value as WarpStateConnected;
}

/// @nodoc

class _$WarpStateConnected
    with DiagnosticableTreeMixin
    implements WarpStateConnected {
  const _$WarpStateConnected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.connected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpState.connected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WarpStateConnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() connecting,
    required TResult Function() disconnected,
    required TResult Function() disconnecting,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarpStateConnected value) connected,
    required TResult Function(WarpStateConnecting value) connecting,
    required TResult Function(WarpStateDisconnected value) disconnected,
    required TResult Function(WarpStateDisconnecting value) disconnecting,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class WarpStateConnected implements WarpState {
  const factory WarpStateConnected() = _$WarpStateConnected;
}

/// @nodoc
abstract class $WarpStateConnectingCopyWith<$Res> {
  factory $WarpStateConnectingCopyWith(
          WarpStateConnecting value, $Res Function(WarpStateConnecting) then) =
      _$WarpStateConnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpStateConnectingCopyWithImpl<$Res>
    extends _$WarpStateCopyWithImpl<$Res>
    implements $WarpStateConnectingCopyWith<$Res> {
  _$WarpStateConnectingCopyWithImpl(
      WarpStateConnecting _value, $Res Function(WarpStateConnecting) _then)
      : super(_value, (v) => _then(v as WarpStateConnecting));

  @override
  WarpStateConnecting get _value => super._value as WarpStateConnecting;
}

/// @nodoc

class _$WarpStateConnecting
    with DiagnosticableTreeMixin
    implements WarpStateConnecting {
  const _$WarpStateConnecting();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.connecting()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpState.connecting'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WarpStateConnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() connecting,
    required TResult Function() disconnected,
    required TResult Function() disconnecting,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarpStateConnected value) connected,
    required TResult Function(WarpStateConnecting value) connecting,
    required TResult Function(WarpStateDisconnected value) disconnected,
    required TResult Function(WarpStateDisconnecting value) disconnecting,
  }) {
    return connecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
  }) {
    return connecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (connecting != null) {
      return connecting(this);
    }
    return orElse();
  }
}

abstract class WarpStateConnecting implements WarpState {
  const factory WarpStateConnecting() = _$WarpStateConnecting;
}

/// @nodoc
abstract class $WarpStateDisconnectedCopyWith<$Res> {
  factory $WarpStateDisconnectedCopyWith(WarpStateDisconnected value,
          $Res Function(WarpStateDisconnected) then) =
      _$WarpStateDisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpStateDisconnectedCopyWithImpl<$Res>
    extends _$WarpStateCopyWithImpl<$Res>
    implements $WarpStateDisconnectedCopyWith<$Res> {
  _$WarpStateDisconnectedCopyWithImpl(
      WarpStateDisconnected _value, $Res Function(WarpStateDisconnected) _then)
      : super(_value, (v) => _then(v as WarpStateDisconnected));

  @override
  WarpStateDisconnected get _value => super._value as WarpStateDisconnected;
}

/// @nodoc

class _$WarpStateDisconnected
    with DiagnosticableTreeMixin
    implements WarpStateDisconnected {
  const _$WarpStateDisconnected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.disconnected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpState.disconnected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WarpStateDisconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() connecting,
    required TResult Function() disconnected,
    required TResult Function() disconnecting,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarpStateConnected value) connected,
    required TResult Function(WarpStateConnecting value) connecting,
    required TResult Function(WarpStateDisconnected value) disconnected,
    required TResult Function(WarpStateDisconnecting value) disconnecting,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class WarpStateDisconnected implements WarpState {
  const factory WarpStateDisconnected() = _$WarpStateDisconnected;
}

/// @nodoc
abstract class $WarpStateDisconnectingCopyWith<$Res> {
  factory $WarpStateDisconnectingCopyWith(WarpStateDisconnecting value,
          $Res Function(WarpStateDisconnecting) then) =
      _$WarpStateDisconnectingCopyWithImpl<$Res>;
}

/// @nodoc
class _$WarpStateDisconnectingCopyWithImpl<$Res>
    extends _$WarpStateCopyWithImpl<$Res>
    implements $WarpStateDisconnectingCopyWith<$Res> {
  _$WarpStateDisconnectingCopyWithImpl(WarpStateDisconnecting _value,
      $Res Function(WarpStateDisconnecting) _then)
      : super(_value, (v) => _then(v as WarpStateDisconnecting));

  @override
  WarpStateDisconnecting get _value => super._value as WarpStateDisconnecting;
}

/// @nodoc

class _$WarpStateDisconnecting
    with DiagnosticableTreeMixin
    implements WarpStateDisconnecting {
  const _$WarpStateDisconnecting();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.disconnecting()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WarpState.disconnecting'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is WarpStateDisconnecting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() connected,
    required TResult Function() connecting,
    required TResult Function() disconnected,
    required TResult Function() disconnecting,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? connected,
    TResult Function()? connecting,
    TResult Function()? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WarpStateConnected value) connected,
    required TResult Function(WarpStateConnecting value) connecting,
    required TResult Function(WarpStateDisconnected value) disconnected,
    required TResult Function(WarpStateDisconnecting value) disconnecting,
  }) {
    return disconnecting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
  }) {
    return disconnecting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WarpStateConnected value)? connected,
    TResult Function(WarpStateConnecting value)? connecting,
    TResult Function(WarpStateDisconnected value)? disconnected,
    TResult Function(WarpStateDisconnecting value)? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnecting != null) {
      return disconnecting(this);
    }
    return orElse();
  }
}

abstract class WarpStateDisconnecting implements WarpState {
  const factory WarpStateDisconnecting() = _$WarpStateDisconnecting;
}
