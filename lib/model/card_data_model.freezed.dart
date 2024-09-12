// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'card_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CardModel _$CardModelFromJson(Map<String, dynamic> json) {
  return _CardModel.fromJson(json);
}

/// @nodoc
mixin _$CardModel {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get keyword => throw _privateConstructorUsedError;
  @HiveField(2)
  String get message1 => throw _privateConstructorUsedError;
  @HiveField(3)
  int get timeStamp => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get message2 => throw _privateConstructorUsedError;

  /// Serializes this CardModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CardModelCopyWith<CardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardModelCopyWith<$Res> {
  factory $CardModelCopyWith(CardModel value, $Res Function(CardModel) then) =
      _$CardModelCopyWithImpl<$Res, CardModel>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String keyword,
      @HiveField(2) String message1,
      @HiveField(3) int timeStamp,
      @HiveField(4) String? message2});
}

/// @nodoc
class _$CardModelCopyWithImpl<$Res, $Val extends CardModel>
    implements $CardModelCopyWith<$Res> {
  _$CardModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keyword = null,
    Object? message1 = null,
    Object? timeStamp = null,
    Object? message2 = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      message1: null == message1
          ? _value.message1
          : message1 // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      message2: freezed == message2
          ? _value.message2
          : message2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CardModelImplCopyWith<$Res>
    implements $CardModelCopyWith<$Res> {
  factory _$$CardModelImplCopyWith(
          _$CardModelImpl value, $Res Function(_$CardModelImpl) then) =
      __$$CardModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String keyword,
      @HiveField(2) String message1,
      @HiveField(3) int timeStamp,
      @HiveField(4) String? message2});
}

/// @nodoc
class __$$CardModelImplCopyWithImpl<$Res>
    extends _$CardModelCopyWithImpl<$Res, _$CardModelImpl>
    implements _$$CardModelImplCopyWith<$Res> {
  __$$CardModelImplCopyWithImpl(
      _$CardModelImpl _value, $Res Function(_$CardModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? keyword = null,
    Object? message1 = null,
    Object? timeStamp = null,
    Object? message2 = freezed,
  }) {
    return _then(_$CardModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      message1: null == message1
          ? _value.message1
          : message1 // ignore: cast_nullable_to_non_nullable
              as String,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
      message2: freezed == message2
          ? _value.message2
          : message2 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'CardModelAdapter')
class _$CardModelImpl implements _CardModel {
  const _$CardModelImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.keyword,
      @HiveField(2) required this.message1,
      @HiveField(3) required this.timeStamp,
      @HiveField(4) this.message2});

  factory _$CardModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CardModelImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String keyword;
  @override
  @HiveField(2)
  final String message1;
  @override
  @HiveField(3)
  final int timeStamp;
  @override
  @HiveField(4)
  final String? message2;

  @override
  String toString() {
    return 'CardModel(id: $id, keyword: $keyword, message1: $message1, timeStamp: $timeStamp, message2: $message2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CardModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.message1, message1) ||
                other.message1 == message1) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp) &&
            (identical(other.message2, message2) ||
                other.message2 == message2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, keyword, message1, timeStamp, message2);

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      __$$CardModelImplCopyWithImpl<_$CardModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CardModelImplToJson(
      this,
    );
  }
}

abstract class _CardModel implements CardModel {
  const factory _CardModel(
      {@HiveField(0) required final String id,
      @HiveField(1) required final String keyword,
      @HiveField(2) required final String message1,
      @HiveField(3) required final int timeStamp,
      @HiveField(4) final String? message2}) = _$CardModelImpl;

  factory _CardModel.fromJson(Map<String, dynamic> json) =
      _$CardModelImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get keyword;
  @override
  @HiveField(2)
  String get message1;
  @override
  @HiveField(3)
  int get timeStamp;
  @override
  @HiveField(4)
  String? get message2;

  /// Create a copy of CardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CardModelImplCopyWith<_$CardModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChildGroup _$ChildGroupFromJson(Map<String, dynamic> json) {
  return _ChildGroup.fromJson(json);
}

/// @nodoc
mixin _$ChildGroup {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  Depth get depth => throw _privateConstructorUsedError;
  @HiveField(2)
  String get title => throw _privateConstructorUsedError;
  @HiveField(3)
  List<CardModel> get keywordList => throw _privateConstructorUsedError;
  @HiveField(4)
  int get timeStamp => throw _privateConstructorUsedError;

  /// Serializes this ChildGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChildGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChildGroupCopyWith<ChildGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildGroupCopyWith<$Res> {
  factory $ChildGroupCopyWith(
          ChildGroup value, $Res Function(ChildGroup) then) =
      _$ChildGroupCopyWithImpl<$Res, ChildGroup>;
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Depth depth,
      @HiveField(2) String title,
      @HiveField(3) List<CardModel> keywordList,
      @HiveField(4) int timeStamp});
}

/// @nodoc
class _$ChildGroupCopyWithImpl<$Res, $Val extends ChildGroup>
    implements $ChildGroupCopyWith<$Res> {
  _$ChildGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChildGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? depth = null,
    Object? title = null,
    Object? keywordList = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      keywordList: null == keywordList
          ? _value.keywordList
          : keywordList // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChildGroupImplCopyWith<$Res>
    implements $ChildGroupCopyWith<$Res> {
  factory _$$ChildGroupImplCopyWith(
          _$ChildGroupImpl value, $Res Function(_$ChildGroupImpl) then) =
      __$$ChildGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) Depth depth,
      @HiveField(2) String title,
      @HiveField(3) List<CardModel> keywordList,
      @HiveField(4) int timeStamp});
}

/// @nodoc
class __$$ChildGroupImplCopyWithImpl<$Res>
    extends _$ChildGroupCopyWithImpl<$Res, _$ChildGroupImpl>
    implements _$$ChildGroupImplCopyWith<$Res> {
  __$$ChildGroupImplCopyWithImpl(
      _$ChildGroupImpl _value, $Res Function(_$ChildGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChildGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? depth = null,
    Object? title = null,
    Object? keywordList = null,
    Object? timeStamp = null,
  }) {
    return _then(_$ChildGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      depth: null == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as Depth,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      keywordList: null == keywordList
          ? _value._keywordList
          : keywordList // ignore: cast_nullable_to_non_nullable
              as List<CardModel>,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 2, adapterName: 'ChildGroupAdapter')
class _$ChildGroupImpl implements _ChildGroup {
  const _$ChildGroupImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.depth,
      @HiveField(2) required this.title,
      @HiveField(3) required final List<CardModel> keywordList,
      @HiveField(4) required this.timeStamp})
      : _keywordList = keywordList;

  factory _$ChildGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChildGroupImplFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final Depth depth;
  @override
  @HiveField(2)
  final String title;
  final List<CardModel> _keywordList;
  @override
  @HiveField(3)
  List<CardModel> get keywordList {
    if (_keywordList is EqualUnmodifiableListView) return _keywordList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_keywordList);
  }

  @override
  @HiveField(4)
  final int timeStamp;

  @override
  String toString() {
    return 'ChildGroup(id: $id, depth: $depth, title: $title, keywordList: $keywordList, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChildGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.depth, depth) || other.depth == depth) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._keywordList, _keywordList) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, depth, title,
      const DeepCollectionEquality().hash(_keywordList), timeStamp);

  /// Create a copy of ChildGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChildGroupImplCopyWith<_$ChildGroupImpl> get copyWith =>
      __$$ChildGroupImplCopyWithImpl<_$ChildGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChildGroupImplToJson(
      this,
    );
  }
}

abstract class _ChildGroup implements ChildGroup {
  const factory _ChildGroup(
      {@HiveField(0) required final String id,
      @HiveField(1) required final Depth depth,
      @HiveField(2) required final String title,
      @HiveField(3) required final List<CardModel> keywordList,
      @HiveField(4) required final int timeStamp}) = _$ChildGroupImpl;

  factory _ChildGroup.fromJson(Map<String, dynamic> json) =
      _$ChildGroupImpl.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  Depth get depth;
  @override
  @HiveField(2)
  String get title;
  @override
  @HiveField(3)
  List<CardModel> get keywordList;
  @override
  @HiveField(4)
  int get timeStamp;

  /// Create a copy of ChildGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChildGroupImplCopyWith<_$ChildGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParentsGroup _$ParentsGroupFromJson(Map<String, dynamic> json) {
  return _ParentsGroup.fromJson(json);
}

/// @nodoc
mixin _$ParentsGroup {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  List<String> get childList => throw _privateConstructorUsedError;
  @HiveField(3)
  int get timeStamp => throw _privateConstructorUsedError;

  /// Serializes this ParentsGroup to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ParentsGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ParentsGroupCopyWith<ParentsGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentsGroupCopyWith<$Res> {
  factory $ParentsGroupCopyWith(
          ParentsGroup value, $Res Function(ParentsGroup) then) =
      _$ParentsGroupCopyWithImpl<$Res, ParentsGroup>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) List<String> childList,
      @HiveField(3) int timeStamp});
}

/// @nodoc
class _$ParentsGroupCopyWithImpl<$Res, $Val extends ParentsGroup>
    implements $ParentsGroupCopyWith<$Res> {
  _$ParentsGroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ParentsGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? childList = null,
    Object? timeStamp = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      childList: null == childList
          ? _value.childList
          : childList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentsGroupImplCopyWith<$Res>
    implements $ParentsGroupCopyWith<$Res> {
  factory _$$ParentsGroupImplCopyWith(
          _$ParentsGroupImpl value, $Res Function(_$ParentsGroupImpl) then) =
      __$$ParentsGroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) List<String> childList,
      @HiveField(3) int timeStamp});
}

/// @nodoc
class __$$ParentsGroupImplCopyWithImpl<$Res>
    extends _$ParentsGroupCopyWithImpl<$Res, _$ParentsGroupImpl>
    implements _$$ParentsGroupImplCopyWith<$Res> {
  __$$ParentsGroupImplCopyWithImpl(
      _$ParentsGroupImpl _value, $Res Function(_$ParentsGroupImpl) _then)
      : super(_value, _then);

  /// Create a copy of ParentsGroup
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? childList = null,
    Object? timeStamp = null,
  }) {
    return _then(_$ParentsGroupImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      childList: null == childList
          ? _value._childList
          : childList // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeStamp: null == timeStamp
          ? _value.timeStamp
          : timeStamp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'ParentsGroupAdapter')
class _$ParentsGroupImpl implements _ParentsGroup {
  const _$ParentsGroupImpl(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required final List<String> childList,
      @HiveField(3) required this.timeStamp})
      : _childList = childList;

  factory _$ParentsGroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentsGroupImplFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  final List<String> _childList;
  @override
  @HiveField(2)
  List<String> get childList {
    if (_childList is EqualUnmodifiableListView) return _childList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_childList);
  }

  @override
  @HiveField(3)
  final int timeStamp;

  @override
  String toString() {
    return 'ParentsGroup(id: $id, title: $title, childList: $childList, timeStamp: $timeStamp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentsGroupImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            const DeepCollectionEquality()
                .equals(other._childList, _childList) &&
            (identical(other.timeStamp, timeStamp) ||
                other.timeStamp == timeStamp));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title,
      const DeepCollectionEquality().hash(_childList), timeStamp);

  /// Create a copy of ParentsGroup
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentsGroupImplCopyWith<_$ParentsGroupImpl> get copyWith =>
      __$$ParentsGroupImplCopyWithImpl<_$ParentsGroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentsGroupImplToJson(
      this,
    );
  }
}

abstract class _ParentsGroup implements ParentsGroup {
  const factory _ParentsGroup(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String title,
      @HiveField(2) required final List<String> childList,
      @HiveField(3) required final int timeStamp}) = _$ParentsGroupImpl;

  factory _ParentsGroup.fromJson(Map<String, dynamic> json) =
      _$ParentsGroupImpl.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  List<String> get childList;
  @override
  @HiveField(3)
  int get timeStamp;

  /// Create a copy of ParentsGroup
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ParentsGroupImplCopyWith<_$ParentsGroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
