// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_navigation_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BottomNavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) onItemSelected,
    required TResult Function() onAiChefTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? onItemSelected,
    TResult? Function()? onAiChefTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? onItemSelected,
    TResult Function()? onAiChefTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onItemSelected value) onItemSelected,
    required TResult Function(_onAiChefTapped value) onAiChefTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onItemSelected value)? onItemSelected,
    TResult? Function(_onAiChefTapped value)? onAiChefTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onItemSelected value)? onItemSelected,
    TResult Function(_onAiChefTapped value)? onAiChefTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationEventCopyWith<$Res> {
  factory $BottomNavigationEventCopyWith(BottomNavigationEvent value,
          $Res Function(BottomNavigationEvent) then) =
      _$BottomNavigationEventCopyWithImpl<$Res, BottomNavigationEvent>;
}

/// @nodoc
class _$BottomNavigationEventCopyWithImpl<$Res,
        $Val extends BottomNavigationEvent>
    implements $BottomNavigationEventCopyWith<$Res> {
  _$BottomNavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$onItemSelectedImplCopyWith<$Res> {
  factory _$$onItemSelectedImplCopyWith(_$onItemSelectedImpl value,
          $Res Function(_$onItemSelectedImpl) then) =
      __$$onItemSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int selectedIndex});
}

/// @nodoc
class __$$onItemSelectedImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$onItemSelectedImpl>
    implements _$$onItemSelectedImplCopyWith<$Res> {
  __$$onItemSelectedImplCopyWithImpl(
      _$onItemSelectedImpl _value, $Res Function(_$onItemSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
  }) {
    return _then(_$onItemSelectedImpl(
      null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$onItemSelectedImpl
    with DiagnosticableTreeMixin
    implements _onItemSelected {
  const _$onItemSelectedImpl(this.selectedIndex);

  @override
  final int selectedIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationEvent.onItemSelected(selectedIndex: $selectedIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomNavigationEvent.onItemSelected'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$onItemSelectedImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$onItemSelectedImplCopyWith<_$onItemSelectedImpl> get copyWith =>
      __$$onItemSelectedImplCopyWithImpl<_$onItemSelectedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) onItemSelected,
    required TResult Function() onAiChefTapped,
  }) {
    return onItemSelected(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? onItemSelected,
    TResult? Function()? onAiChefTapped,
  }) {
    return onItemSelected?.call(selectedIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? onItemSelected,
    TResult Function()? onAiChefTapped,
    required TResult orElse(),
  }) {
    if (onItemSelected != null) {
      return onItemSelected(selectedIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onItemSelected value) onItemSelected,
    required TResult Function(_onAiChefTapped value) onAiChefTapped,
  }) {
    return onItemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onItemSelected value)? onItemSelected,
    TResult? Function(_onAiChefTapped value)? onAiChefTapped,
  }) {
    return onItemSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onItemSelected value)? onItemSelected,
    TResult Function(_onAiChefTapped value)? onAiChefTapped,
    required TResult orElse(),
  }) {
    if (onItemSelected != null) {
      return onItemSelected(this);
    }
    return orElse();
  }
}

abstract class _onItemSelected implements BottomNavigationEvent {
  const factory _onItemSelected(final int selectedIndex) = _$onItemSelectedImpl;

  int get selectedIndex;

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$onItemSelectedImplCopyWith<_$onItemSelectedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$onAiChefTappedImplCopyWith<$Res> {
  factory _$$onAiChefTappedImplCopyWith(_$onAiChefTappedImpl value,
          $Res Function(_$onAiChefTappedImpl) then) =
      __$$onAiChefTappedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$onAiChefTappedImplCopyWithImpl<$Res>
    extends _$BottomNavigationEventCopyWithImpl<$Res, _$onAiChefTappedImpl>
    implements _$$onAiChefTappedImplCopyWith<$Res> {
  __$$onAiChefTappedImplCopyWithImpl(
      _$onAiChefTappedImpl _value, $Res Function(_$onAiChefTappedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$onAiChefTappedImpl
    with DiagnosticableTreeMixin
    implements _onAiChefTapped {
  const _$onAiChefTappedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationEvent.onAiChefTapped()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'BottomNavigationEvent.onAiChefTapped'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$onAiChefTappedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedIndex) onItemSelected,
    required TResult Function() onAiChefTapped,
  }) {
    return onAiChefTapped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedIndex)? onItemSelected,
    TResult? Function()? onAiChefTapped,
  }) {
    return onAiChefTapped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedIndex)? onItemSelected,
    TResult Function()? onAiChefTapped,
    required TResult orElse(),
  }) {
    if (onAiChefTapped != null) {
      return onAiChefTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_onItemSelected value) onItemSelected,
    required TResult Function(_onAiChefTapped value) onAiChefTapped,
  }) {
    return onAiChefTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_onItemSelected value)? onItemSelected,
    TResult? Function(_onAiChefTapped value)? onAiChefTapped,
  }) {
    return onAiChefTapped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_onItemSelected value)? onItemSelected,
    TResult Function(_onAiChefTapped value)? onAiChefTapped,
    required TResult orElse(),
  }) {
    if (onAiChefTapped != null) {
      return onAiChefTapped(this);
    }
    return orElse();
  }
}

abstract class _onAiChefTapped implements BottomNavigationEvent {
  const factory _onAiChefTapped() = _$onAiChefTappedImpl;
}

/// @nodoc
mixin _$BottomNavigationState {
  int get selectedIndex => throw _privateConstructorUsedError;
  PageRouteInfo<Object?>? get navigateTo => throw _privateConstructorUsedError;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BottomNavigationStateCopyWith<BottomNavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomNavigationStateCopyWith<$Res> {
  factory $BottomNavigationStateCopyWith(BottomNavigationState value,
          $Res Function(BottomNavigationState) then) =
      _$BottomNavigationStateCopyWithImpl<$Res, BottomNavigationState>;
  @useResult
  $Res call({int selectedIndex, PageRouteInfo<Object?>? navigateTo});
}

/// @nodoc
class _$BottomNavigationStateCopyWithImpl<$Res,
        $Val extends BottomNavigationState>
    implements $BottomNavigationStateCopyWith<$Res> {
  _$BottomNavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? navigateTo = freezed,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      navigateTo: freezed == navigateTo
          ? _value.navigateTo
          : navigateTo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BottomNavigationStateImplCopyWith<$Res>
    implements $BottomNavigationStateCopyWith<$Res> {
  factory _$$BottomNavigationStateImplCopyWith(
          _$BottomNavigationStateImpl value,
          $Res Function(_$BottomNavigationStateImpl) then) =
      __$$BottomNavigationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, PageRouteInfo<Object?>? navigateTo});
}

/// @nodoc
class __$$BottomNavigationStateImplCopyWithImpl<$Res>
    extends _$BottomNavigationStateCopyWithImpl<$Res,
        _$BottomNavigationStateImpl>
    implements _$$BottomNavigationStateImplCopyWith<$Res> {
  __$$BottomNavigationStateImplCopyWithImpl(_$BottomNavigationStateImpl _value,
      $Res Function(_$BottomNavigationStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? navigateTo = freezed,
  }) {
    return _then(_$BottomNavigationStateImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      navigateTo: freezed == navigateTo
          ? _value.navigateTo
          : navigateTo // ignore: cast_nullable_to_non_nullable
              as PageRouteInfo<Object?>?,
    ));
  }
}

/// @nodoc

class _$BottomNavigationStateImpl
    with DiagnosticableTreeMixin
    implements _BottomNavigationState {
  const _$BottomNavigationStateImpl({this.selectedIndex = 0, this.navigateTo});

  @override
  @JsonKey()
  final int selectedIndex;
  @override
  final PageRouteInfo<Object?>? navigateTo;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BottomNavigationState(selectedIndex: $selectedIndex, navigateTo: $navigateTo)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BottomNavigationState'))
      ..add(DiagnosticsProperty('selectedIndex', selectedIndex))
      ..add(DiagnosticsProperty('navigateTo', navigateTo));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomNavigationStateImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.navigateTo, navigateTo) ||
                other.navigateTo == navigateTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, navigateTo);

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => __$$BottomNavigationStateImplCopyWithImpl<
          _$BottomNavigationStateImpl>(this, _$identity);
}

abstract class _BottomNavigationState implements BottomNavigationState {
  const factory _BottomNavigationState(
      {final int selectedIndex,
      final PageRouteInfo<Object?>? navigateTo}) = _$BottomNavigationStateImpl;

  @override
  int get selectedIndex;
  @override
  PageRouteInfo<Object?>? get navigateTo;

  /// Create a copy of BottomNavigationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BottomNavigationStateImplCopyWith<_$BottomNavigationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
