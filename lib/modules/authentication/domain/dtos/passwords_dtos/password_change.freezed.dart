// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordChangeRequest _$PasswordChangeRequestFromJson(
    Map<String, dynamic> json) {
  return _PasswordChangeRequest.fromJson(json);
}

/// @nodoc
mixin _$PasswordChangeRequest {
  @JsonKey(name: "old_password")
  String get oldPassword => throw _privateConstructorUsedError;
  @JsonKey(name: "new_password")
  String get newPassword => throw _privateConstructorUsedError;

  /// Serializes this PasswordChangeRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PasswordChangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasswordChangeRequestCopyWith<PasswordChangeRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeRequestCopyWith<$Res> {
  factory $PasswordChangeRequestCopyWith(PasswordChangeRequest value,
          $Res Function(PasswordChangeRequest) then) =
      _$PasswordChangeRequestCopyWithImpl<$Res, PasswordChangeRequest>;
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "new_password") String newPassword});
}

/// @nodoc
class _$PasswordChangeRequestCopyWithImpl<$Res,
        $Val extends PasswordChangeRequest>
    implements $PasswordChangeRequestCopyWith<$Res> {
  _$PasswordChangeRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PasswordChangeRequest
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
abstract class _$$PasswordChangeRequestImplCopyWith<$Res>
    implements $PasswordChangeRequestCopyWith<$Res> {
  factory _$$PasswordChangeRequestImplCopyWith(
          _$PasswordChangeRequestImpl value,
          $Res Function(_$PasswordChangeRequestImpl) then) =
      __$$PasswordChangeRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "old_password") String oldPassword,
      @JsonKey(name: "new_password") String newPassword});
}

/// @nodoc
class __$$PasswordChangeRequestImplCopyWithImpl<$Res>
    extends _$PasswordChangeRequestCopyWithImpl<$Res,
        _$PasswordChangeRequestImpl>
    implements _$$PasswordChangeRequestImplCopyWith<$Res> {
  __$$PasswordChangeRequestImplCopyWithImpl(_$PasswordChangeRequestImpl _value,
      $Res Function(_$PasswordChangeRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of PasswordChangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = null,
    Object? newPassword = null,
  }) {
    return _then(_$PasswordChangeRequestImpl(
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
class _$PasswordChangeRequestImpl implements _PasswordChangeRequest {
  const _$PasswordChangeRequestImpl(
      {@JsonKey(name: "old_password") required this.oldPassword,
      @JsonKey(name: "new_password") required this.newPassword});

  factory _$PasswordChangeRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PasswordChangeRequestImplFromJson(json);

  @override
  @JsonKey(name: "old_password")
  final String oldPassword;
  @override
  @JsonKey(name: "new_password")
  final String newPassword;

  @override
  String toString() {
    return 'PasswordChangeRequest(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChangeRequestImpl &&
            (identical(other.oldPassword, oldPassword) ||
                other.oldPassword == oldPassword) &&
            (identical(other.newPassword, newPassword) ||
                other.newPassword == newPassword));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, oldPassword, newPassword);

  /// Create a copy of PasswordChangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangeRequestImplCopyWith<_$PasswordChangeRequestImpl>
      get copyWith => __$$PasswordChangeRequestImplCopyWithImpl<
          _$PasswordChangeRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PasswordChangeRequestImplToJson(
      this,
    );
  }
}

abstract class _PasswordChangeRequest implements PasswordChangeRequest {
  const factory _PasswordChangeRequest(
          {@JsonKey(name: "old_password") required final String oldPassword,
          @JsonKey(name: "new_password") required final String newPassword}) =
      _$PasswordChangeRequestImpl;

  factory _PasswordChangeRequest.fromJson(Map<String, dynamic> json) =
      _$PasswordChangeRequestImpl.fromJson;

  @override
  @JsonKey(name: "old_password")
  String get oldPassword;
  @override
  @JsonKey(name: "new_password")
  String get newPassword;

  /// Create a copy of PasswordChangeRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasswordChangeRequestImplCopyWith<_$PasswordChangeRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
