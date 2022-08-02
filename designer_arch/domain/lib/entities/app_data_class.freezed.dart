// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_data_class.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppDataClass {
  String get appTitle => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppDataClassCopyWith<AppDataClass> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppDataClassCopyWith<$Res> {
  factory $AppDataClassCopyWith(
          AppDataClass value, $Res Function(AppDataClass) then) =
      _$AppDataClassCopyWithImpl<$Res>;
  $Res call({String appTitle});
}

/// @nodoc
class _$AppDataClassCopyWithImpl<$Res> implements $AppDataClassCopyWith<$Res> {
  _$AppDataClassCopyWithImpl(this._value, this._then);

  final AppDataClass _value;
  // ignore: unused_field
  final $Res Function(AppDataClass) _then;

  @override
  $Res call({
    Object? appTitle = freezed,
  }) {
    return _then(_value.copyWith(
      appTitle: appTitle == freezed
          ? _value.appTitle
          : appTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_DataClassCopyWith<$Res>
    implements $AppDataClassCopyWith<$Res> {
  factory _$$_DataClassCopyWith(
          _$_DataClass value, $Res Function(_$_DataClass) then) =
      __$$_DataClassCopyWithImpl<$Res>;
  @override
  $Res call({String appTitle});
}

/// @nodoc
class __$$_DataClassCopyWithImpl<$Res> extends _$AppDataClassCopyWithImpl<$Res>
    implements _$$_DataClassCopyWith<$Res> {
  __$$_DataClassCopyWithImpl(
      _$_DataClass _value, $Res Function(_$_DataClass) _then)
      : super(_value, (v) => _then(v as _$_DataClass));

  @override
  _$_DataClass get _value => super._value as _$_DataClass;

  @override
  $Res call({
    Object? appTitle = freezed,
  }) {
    return _then(_$_DataClass(
      appTitle: appTitle == freezed
          ? _value.appTitle
          : appTitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DataClass implements _DataClass {
  const _$_DataClass({this.appTitle = 'DesignerApp'});

  @override
  @JsonKey()
  final String appTitle;

  @override
  String toString() {
    return 'AppDataClass(appTitle: $appTitle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataClass &&
            const DeepCollectionEquality().equals(other.appTitle, appTitle));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appTitle));

  @JsonKey(ignore: true)
  @override
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      __$$_DataClassCopyWithImpl<_$_DataClass>(this, _$identity);
}

abstract class _DataClass implements AppDataClass {
  const factory _DataClass({final String appTitle}) = _$_DataClass;

  @override
  String get appTitle;
  @override
  @JsonKey(ignore: true)
  _$$_DataClassCopyWith<_$_DataClass> get copyWith =>
      throw _privateConstructorUsedError;
}
