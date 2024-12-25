// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResetRequest _$ResetRequestFromJson(Map<String, dynamic> json) {
  return _ResetRequest.fromJson(json);
}

/// @nodoc
mixin _$ResetRequest {
  String get email => throw _privateConstructorUsedError;

  /// Serializes this ResetRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResetRequestCopyWith<ResetRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetRequestCopyWith<$Res> {
  factory $ResetRequestCopyWith(
          ResetRequest value, $Res Function(ResetRequest) then) =
      _$ResetRequestCopyWithImpl<$Res, ResetRequest>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$ResetRequestCopyWithImpl<$Res, $Val extends ResetRequest>
    implements $ResetRequestCopyWith<$Res> {
  _$ResetRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResetRequestImplCopyWith<$Res>
    implements $ResetRequestCopyWith<$Res> {
  factory _$$ResetRequestImplCopyWith(
          _$ResetRequestImpl value, $Res Function(_$ResetRequestImpl) then) =
      __$$ResetRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetRequestImplCopyWithImpl<$Res>
    extends _$ResetRequestCopyWithImpl<$Res, _$ResetRequestImpl>
    implements _$$ResetRequestImplCopyWith<$Res> {
  __$$ResetRequestImplCopyWithImpl(
      _$ResetRequestImpl _value, $Res Function(_$ResetRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetRequestImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResetRequestImpl implements _ResetRequest {
  const _$ResetRequestImpl({required this.email});

  factory _$ResetRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResetRequestImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'ResetRequest(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetRequestImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of ResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetRequestImplCopyWith<_$ResetRequestImpl> get copyWith =>
      __$$ResetRequestImplCopyWithImpl<_$ResetRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResetRequestImplToJson(
      this,
    );
  }
}

abstract class _ResetRequest implements ResetRequest {
  const factory _ResetRequest({required final String email}) =
      _$ResetRequestImpl;

  factory _ResetRequest.fromJson(Map<String, dynamic> json) =
      _$ResetRequestImpl.fromJson;

  @override
  String get email;

  /// Create a copy of ResetRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetRequestImplCopyWith<_$ResetRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
