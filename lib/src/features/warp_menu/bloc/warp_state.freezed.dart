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

  WarpStateConnected connected(String ip) {
    return WarpStateConnected(
      ip,
    );
  }

  WarpStateConnecting connecting() {
    return const WarpStateConnecting();
  }

  WarpStateDisconnected disconnected(String ip) {
    return WarpStateDisconnected(
      ip,
    );
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
    required TResult Function(String ip) connected,
    required TResult Function() connecting,
    required TResult Function(String ip) disconnected,
    required TResult Function() disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
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
  $Res call({String ip});
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

  @override
  $Res call({
    Object? ip = freezed,
  }) {
    return _then(WarpStateConnected(
      ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WarpStateConnected
    with DiagnosticableTreeMixin
    implements WarpStateConnected {
  _$WarpStateConnected(this.ip);

  @override
  final String ip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.connected(ip: $ip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarpState.connected'))
      ..add(DiagnosticsProperty('ip', ip));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WarpStateConnected &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ip);

  @JsonKey(ignore: true)
  @override
  $WarpStateConnectedCopyWith<WarpStateConnected> get copyWith =>
      _$WarpStateConnectedCopyWithImpl<WarpStateConnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip) connected,
    required TResult Function() connecting,
    required TResult Function(String ip) disconnected,
    required TResult Function() disconnecting,
  }) {
    return connected(ip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
  }) {
    return connected?.call(ip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(ip);
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
  factory WarpStateConnected(String ip) = _$WarpStateConnected;

  String get ip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarpStateConnectedCopyWith<WarpStateConnected> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String ip) connected,
    required TResult Function() connecting,
    required TResult Function(String ip) disconnected,
    required TResult Function() disconnecting,
  }) {
    return connecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
  }) {
    return connecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
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
  $Res call({String ip});
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

  @override
  $Res call({
    Object? ip = freezed,
  }) {
    return _then(WarpStateDisconnected(
      ip == freezed
          ? _value.ip
          : ip // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WarpStateDisconnected
    with DiagnosticableTreeMixin
    implements WarpStateDisconnected {
  _$WarpStateDisconnected(this.ip);

  @override
  final String ip;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WarpState.disconnected(ip: $ip)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WarpState.disconnected'))
      ..add(DiagnosticsProperty('ip', ip));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WarpStateDisconnected &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(ip);

  @JsonKey(ignore: true)
  @override
  $WarpStateDisconnectedCopyWith<WarpStateDisconnected> get copyWith =>
      _$WarpStateDisconnectedCopyWithImpl<WarpStateDisconnected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ip) connected,
    required TResult Function() connecting,
    required TResult Function(String ip) disconnected,
    required TResult Function() disconnecting,
  }) {
    return disconnected(ip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
  }) {
    return disconnected?.call(ip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(ip);
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
  factory WarpStateDisconnected(String ip) = _$WarpStateDisconnected;

  String get ip => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WarpStateDisconnectedCopyWith<WarpStateDisconnected> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(String ip) connected,
    required TResult Function() connecting,
    required TResult Function(String ip) disconnected,
    required TResult Function() disconnecting,
  }) {
    return disconnecting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
    TResult Function()? disconnecting,
  }) {
    return disconnecting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ip)? connected,
    TResult Function()? connecting,
    TResult Function(String ip)? disconnected,
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
