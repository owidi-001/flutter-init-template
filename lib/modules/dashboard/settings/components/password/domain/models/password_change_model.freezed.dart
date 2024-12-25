// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordChangeModel _$PasswordChangeModelFromJson(Map<String, dynamic> json) {
  return _PasswordChangeModel.fromJson(json);
}

/// @nodoc
mixin _$PasswordChangeModel {
  @JsonKey(name: "old_password")
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "new_password")
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordChangeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeModelCopyWith<PasswordChangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeModelCopyWith<$Res> {
  factory $PasswordChangeModelCopyWith(
          PasswordChangeModel value, $Res Function(PasswordChangeModel) then) =
      _$PasswordChangeModelCopyWithImpl<$Res, PasswordChangeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "new_password") String newPassword});
}

/// @nodoc
class _$PasswordChangeModelCopyWithImpl<$Res, $Val extends PasswordChangeModel>
    implements $PasswordChangeModelCopyWith<$Res> {
  _$PasswordChangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_value.copyWith(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasswordChangeModelImplCopyWith<$Res>
    implements $PasswordChangeModelCopyWith<$Res> {
  factory _$$PasswordChangeModelImplCopyWith(_$PasswordChangeModelImpl value,
          $Res Function(_$PasswordChangeModelImpl) then) =
      __$$PasswordChangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "new_password") String newPassword});
}

/// @nodoc
class __$$PasswordChangeModelImplCopyWithImpl<$Res>
    extends _$PasswordChangeModelCopyWithImpl<$Res, _$PasswordChangeModelImpl>
    implements _$$PasswordChangeModelImplCopyWith<$Res> {
  __$$PasswordChangeModelImplCopyWithImpl(_$PasswordChangeModelImpl _value,
      $Res Function(_$PasswordChangeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$PasswordChangeModelImpl(
      oldPassword: null == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as String,
      newPassword: null == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PasswordChangeModelImpl implements _PasswordChangeModel {
  const _$PasswordChangeModelImpl(
      {@JsonKey(name: "old_password") required this.oldPassword,
      @JsonKey(name: "new_password") required this.newPassword});

  factory _$PasswordChangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordChangeModelImplFromJson(json);

  @override
  @JsonKey(name: "old_password")
  final String oldPassword;
  @override
  @JsonKey(name: "new_password")
  final String newPassword;

  @override
  String toString() {
    return 'PasswordChangeModel(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeModelImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of PasswordChangeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeModelImplCopyWith<_$PasswordChangeModelImpl> get copyWith =>
      __$$PasswordChangeModelImplCopyWithImpl<_$PasswordChangeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordChangeModelImplToJson(
      this,
    );
  }
}

abstract class _PasswordChangeModel implements PasswordChangeModel {
  const factory _PasswordChangeModel(
          {@JsonKey(name: "old_password") required final String oldPassword,
          @JsonKey(name: "new_password") required final String newPassword}) =
      _$PasswordChangeModelImpl;

  factory _PasswordChangeModel.fromJson(Map<String, dynamic> json) =
      _$PasswordChangeModelImpl.fromJson;

  @override
  @JsonKey(name: "old_password")
  String get oldPassword;
  @override
  @JsonKey(name: "new_password")
  String get newPassword;

  /// Create a copy of PasswordChangeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeModelImplCopyWith<_$PasswordChangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
