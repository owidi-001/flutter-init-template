// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_number")
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  String get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "phone_verified")
  bool get phoneVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "email_verified")
  bool get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: "last_active")
  DateTime? get lastActive => throw _privateConstructorUsedError;
  @JsonKey(name: "is_admin")
  bool get isAdmin => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "full_name") String name,
      String email,
      @JsonKey(name: "phone_number") String phone,
      @JsonKey(name: "profile_image") String profileImage,
      @JsonKey(name: "phone_verified") bool phoneVerified,
      @JsonKey(name: "email_verified") bool emailVerified,
      @JsonKey(name: "last_active") DateTime? lastActive,
      @JsonKey(name: "is_admin") bool isAdmin});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? profileImage = null,
    Object? phoneVerified = null,
    Object? emailVerified = null,
    Object? lastActive = freezed,
    Object? isAdmin = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: "full_name") String name,
      String email,
      @JsonKey(name: "phone_number") String phone,
      @JsonKey(name: "profile_image") String profileImage,
      @JsonKey(name: "phone_verified") bool phoneVerified,
      @JsonKey(name: "email_verified") bool emailVerified,
      @JsonKey(name: "last_active") DateTime? lastActive,
      @JsonKey(name: "is_admin") bool isAdmin});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? phone = null,
    Object? profileImage = null,
    Object? phoneVerified = null,
    Object? emailVerified = null,
    Object? lastActive = freezed,
    Object? isAdmin = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      lastActive: freezed == lastActive
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAdmin: null == isAdmin
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  const _$UserImpl(
      {required this.id,
      @JsonKey(name: "full_name") this.name = "No Name",
      required this.email,
      @JsonKey(name: "phone_number") required this.phone,
      @JsonKey(name: "profile_image") this.profileImage =
          "https://img.freepik.com/free-psd/3d-render-avatar-character_23-2150611704.jpg?t=st=1729946429~exp=1729950029~hmac=b1d70e082c8fd023371573f2492708920cf23f7992995dafaf9ed7eaf8b6e303&w=1380",
      @JsonKey(name: "phone_verified") this.phoneVerified = false,
      @JsonKey(name: "email_verified") this.emailVerified = false,
      @JsonKey(name: "last_active") this.lastActive,
      @JsonKey(name: "is_admin") this.isAdmin = false});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "full_name")
  final String name;
  @override
  final String email;
  @override
  @JsonKey(name: "phone_number")
  final String phone;
  @override
  @JsonKey(name: "profile_image")
  final String profileImage;
  @override
  @JsonKey(name: "phone_verified")
  final bool phoneVerified;
  @override
  @JsonKey(name: "email_verified")
  final bool emailVerified;
  @override
  @JsonKey(name: "last_active")
  final DateTime? lastActive;
  @override
  @JsonKey(name: "is_admin")
  final bool isAdmin;

  @override
  String toString() {
    return 'User(id: $id, name: $name, email: $email, phone: $phone, profileImage: $profileImage, phoneVerified: $phoneVerified, emailVerified: $emailVerified, lastActive: $lastActive, isAdmin: $isAdmin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.isAdmin, isAdmin) || other.isAdmin == isAdmin));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, email, phone,
      profileImage, phoneVerified, emailVerified, lastActive, isAdmin);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final int id,
      @JsonKey(name: "full_name") final String name,
      required final String email,
      @JsonKey(name: "phone_number") required final String phone,
      @JsonKey(name: "profile_image") final String profileImage,
      @JsonKey(name: "phone_verified") final bool phoneVerified,
      @JsonKey(name: "email_verified") final bool emailVerified,
      @JsonKey(name: "last_active") final DateTime? lastActive,
      @JsonKey(name: "is_admin") final bool isAdmin}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: "full_name")
  String get name;
  @override
  String get email;
  @override
  @JsonKey(name: "phone_number")
  String get phone;
  @override
  @JsonKey(name: "profile_image")
  String get profileImage;
  @override
  @JsonKey(name: "phone_verified")
  bool get phoneVerified;
  @override
  @JsonKey(name: "email_verified")
  bool get emailVerified;
  @override
  @JsonKey(name: "last_active")
  DateTime? get lastActive;
  @override
  @JsonKey(name: "is_admin")
  bool get isAdmin;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserUpdateData _$UserUpdateDataFromJson(Map<String, dynamic> json) {
  return _UserUpdateData.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateData {
  @JsonKey(name: "full_name")
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: "store_name")
  String? get storeName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get profileImage => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  /// Serializes this UserUpdateData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateDataCopyWith<UserUpdateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateDataCopyWith<$Res> {
  factory $UserUpdateDataCopyWith(
          UserUpdateData value, $Res Function(UserUpdateData) then) =
      _$UserUpdateDataCopyWithImpl<$Res, UserUpdateData>;
  @useResult
  $Res call(
      {@JsonKey(name: "full_name") String? name,
      @JsonKey(name: "store_name") String? storeName,
      String? email,
      String? phone,
      @JsonKey(includeFromJson: false, includeToJson: false) File? profileImage,
      String? country});
}

/// @nodoc
class _$UserUpdateDataCopyWithImpl<$Res, $Val extends UserUpdateData>
    implements $UserUpdateDataCopyWith<$Res> {
  _$UserUpdateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? storeName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateDataImplCopyWith<$Res>
    implements $UserUpdateDataCopyWith<$Res> {
  factory _$$UserUpdateDataImplCopyWith(_$UserUpdateDataImpl value,
          $Res Function(_$UserUpdateDataImpl) then) =
      __$$UserUpdateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "full_name") String? name,
      @JsonKey(name: "store_name") String? storeName,
      String? email,
      String? phone,
      @JsonKey(includeFromJson: false, includeToJson: false) File? profileImage,
      String? country});
}

/// @nodoc
class __$$UserUpdateDataImplCopyWithImpl<$Res>
    extends _$UserUpdateDataCopyWithImpl<$Res, _$UserUpdateDataImpl>
    implements _$$UserUpdateDataImplCopyWith<$Res> {
  __$$UserUpdateDataImplCopyWithImpl(
      _$UserUpdateDataImpl _value, $Res Function(_$UserUpdateDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? storeName = freezed,
    Object? email = freezed,
    Object? phone = freezed,
    Object? profileImage = freezed,
    Object? country = freezed,
  }) {
    return _then(_$UserUpdateDataImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      storeName: freezed == storeName
          ? _value.storeName
          : storeName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as File?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserUpdateDataImpl implements _UserUpdateData {
  const _$UserUpdateDataImpl(
      {@JsonKey(name: "full_name") this.name,
      @JsonKey(name: "store_name") this.storeName,
      this.email,
      this.phone,
      @JsonKey(includeFromJson: false, includeToJson: false) this.profileImage,
      this.country});

  factory _$UserUpdateDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateDataImplFromJson(json);

  @override
  @JsonKey(name: "full_name")
  final String? name;
  @override
  @JsonKey(name: "store_name")
  final String? storeName;
  @override
  final String? email;
  @override
  final String? phone;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final File? profileImage;
  @override
  final String? country;

  @override
  String toString() {
    return 'UserUpdateData(name: $name, storeName: $storeName, email: $email, phone: $phone, profileImage: $profileImage, country: $country)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateDataImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.storeName, storeName) ||
                other.storeName == storeName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, storeName, email, phone, profileImage, country);

  /// Create a copy of UserUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateDataImplCopyWith<_$UserUpdateDataImpl> get copyWith =>
      __$$UserUpdateDataImplCopyWithImpl<_$UserUpdateDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateDataImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateData implements UserUpdateData {
  const factory _UserUpdateData(
      {@JsonKey(name: "full_name") final String? name,
      @JsonKey(name: "store_name") final String? storeName,
      final String? email,
      final String? phone,
      @JsonKey(includeFromJson: false, includeToJson: false)
      final File? profileImage,
      final String? country}) = _$UserUpdateDataImpl;

  factory _UserUpdateData.fromJson(Map<String, dynamic> json) =
      _$UserUpdateDataImpl.fromJson;

  @override
  @JsonKey(name: "full_name")
  String? get name;
  @override
  @JsonKey(name: "store_name")
  String? get storeName;
  @override
  String? get email;
  @override
  String? get phone;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  File? get profileImage;
  @override
  String? get country;

  /// Create a copy of UserUpdateData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateDataImplCopyWith<_$UserUpdateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
