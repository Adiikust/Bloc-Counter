// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crud_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CrudEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudEventCopyWith<$Res> {
  factory $CrudEventCopyWith(CrudEvent value, $Res Function(CrudEvent) then) =
      _$CrudEventCopyWithImpl<$Res, CrudEvent>;
}

/// @nodoc
class _$CrudEventCopyWithImpl<$Res, $Val extends CrudEvent>
    implements $CrudEventCopyWith<$Res> {
  _$CrudEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ValidateTitleImplCopyWith<$Res> {
  factory _$$ValidateTitleImplCopyWith(
          _$ValidateTitleImpl value, $Res Function(_$ValidateTitleImpl) then) =
      __$$ValidateTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ValidateTitleImplCopyWithImpl<$Res>
    extends _$CrudEventCopyWithImpl<$Res, _$ValidateTitleImpl>
    implements _$$ValidateTitleImplCopyWith<$Res> {
  __$$ValidateTitleImplCopyWithImpl(
      _$ValidateTitleImpl _value, $Res Function(_$ValidateTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ValidateTitleImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateTitleImpl implements ValidateTitle {
  const _$ValidateTitleImpl({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'CrudEvent.validateTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateTitleImplCopyWith<_$ValidateTitleImpl> get copyWith =>
      __$$ValidateTitleImplCopyWithImpl<_$ValidateTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) {
    return validateTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) {
    return validateTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateTitle != null) {
      return validateTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) {
    return validateTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) {
    return validateTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateTitle != null) {
      return validateTitle(this);
    }
    return orElse();
  }
}

abstract class ValidateTitle implements CrudEvent {
  const factory ValidateTitle({required final String title}) =
      _$ValidateTitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$ValidateTitleImplCopyWith<_$ValidateTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateSubTitleImplCopyWith<$Res> {
  factory _$$ValidateSubTitleImplCopyWith(_$ValidateSubTitleImpl value,
          $Res Function(_$ValidateSubTitleImpl) then) =
      __$$ValidateSubTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String subtitle});
}

/// @nodoc
class __$$ValidateSubTitleImplCopyWithImpl<$Res>
    extends _$CrudEventCopyWithImpl<$Res, _$ValidateSubTitleImpl>
    implements _$$ValidateSubTitleImplCopyWith<$Res> {
  __$$ValidateSubTitleImplCopyWithImpl(_$ValidateSubTitleImpl _value,
      $Res Function(_$ValidateSubTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subtitle = null,
  }) {
    return _then(_$ValidateSubTitleImpl(
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidateSubTitleImpl implements ValidateSubTitle {
  const _$ValidateSubTitleImpl({required this.subtitle});

  @override
  final String subtitle;

  @override
  String toString() {
    return 'CrudEvent.validateSubTitle(subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateSubTitleImpl &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateSubTitleImplCopyWith<_$ValidateSubTitleImpl> get copyWith =>
      __$$ValidateSubTitleImplCopyWithImpl<_$ValidateSubTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) {
    return validateSubTitle(subtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) {
    return validateSubTitle?.call(subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateSubTitle != null) {
      return validateSubTitle(subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) {
    return validateSubTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) {
    return validateSubTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateSubTitle != null) {
      return validateSubTitle(this);
    }
    return orElse();
  }
}

abstract class ValidateSubTitle implements CrudEvent {
  const factory ValidateSubTitle({required final String subtitle}) =
      _$ValidateSubTitleImpl;

  String get subtitle;
  @JsonKey(ignore: true)
  _$$ValidateSubTitleImplCopyWith<_$ValidateSubTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ValidateIsCheckImplCopyWith<$Res> {
  factory _$$ValidateIsCheckImplCopyWith(_$ValidateIsCheckImpl value,
          $Res Function(_$ValidateIsCheckImpl) then) =
      __$$ValidateIsCheckImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isCheck, int index});
}

/// @nodoc
class __$$ValidateIsCheckImplCopyWithImpl<$Res>
    extends _$CrudEventCopyWithImpl<$Res, _$ValidateIsCheckImpl>
    implements _$$ValidateIsCheckImplCopyWith<$Res> {
  __$$ValidateIsCheckImplCopyWithImpl(
      _$ValidateIsCheckImpl _value, $Res Function(_$ValidateIsCheckImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCheck = null,
    Object? index = null,
  }) {
    return _then(_$ValidateIsCheckImpl(
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ValidateIsCheckImpl implements ValidateIsCheck {
  const _$ValidateIsCheckImpl({required this.isCheck, required this.index});

  @override
  final bool isCheck;
  @override
  final int index;

  @override
  String toString() {
    return 'CrudEvent.validateIsCheck(isCheck: $isCheck, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidateIsCheckImpl &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCheck, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidateIsCheckImplCopyWith<_$ValidateIsCheckImpl> get copyWith =>
      __$$ValidateIsCheckImplCopyWithImpl<_$ValidateIsCheckImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) {
    return validateIsCheck(isCheck, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) {
    return validateIsCheck?.call(isCheck, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateIsCheck != null) {
      return validateIsCheck(isCheck, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) {
    return validateIsCheck(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) {
    return validateIsCheck?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (validateIsCheck != null) {
      return validateIsCheck(this);
    }
    return orElse();
  }
}

abstract class ValidateIsCheck implements CrudEvent {
  const factory ValidateIsCheck(
      {required final bool isCheck,
      required final int index}) = _$ValidateIsCheckImpl;

  bool get isCheck;
  int get index;
  @JsonKey(ignore: true)
  _$$ValidateIsCheckImplCopyWith<_$ValidateIsCheckImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDateToListImplCopyWith<$Res> {
  factory _$$AddDateToListImplCopyWith(
          _$AddDateToListImpl value, $Res Function(_$AddDateToListImpl) then) =
      __$$AddDateToListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddDateToListImplCopyWithImpl<$Res>
    extends _$CrudEventCopyWithImpl<$Res, _$AddDateToListImpl>
    implements _$$AddDateToListImplCopyWith<$Res> {
  __$$AddDateToListImplCopyWithImpl(
      _$AddDateToListImpl _value, $Res Function(_$AddDateToListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddDateToListImpl implements AddDateToList {
  const _$AddDateToListImpl();

  @override
  String toString() {
    return 'CrudEvent.addDateToList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AddDateToListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) {
    return addDateToList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) {
    return addDateToList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (addDateToList != null) {
      return addDateToList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) {
    return addDateToList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) {
    return addDateToList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (addDateToList != null) {
      return addDateToList(this);
    }
    return orElse();
  }
}

abstract class AddDateToList implements CrudEvent {
  const factory AddDateToList() = _$AddDateToListImpl;
}

/// @nodoc
abstract class _$$DeleteDateToListImplCopyWith<$Res> {
  factory _$$DeleteDateToListImplCopyWith(_$DeleteDateToListImpl value,
          $Res Function(_$DeleteDateToListImpl) then) =
      __$$DeleteDateToListImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$DeleteDateToListImplCopyWithImpl<$Res>
    extends _$CrudEventCopyWithImpl<$Res, _$DeleteDateToListImpl>
    implements _$$DeleteDateToListImplCopyWith<$Res> {
  __$$DeleteDateToListImplCopyWithImpl(_$DeleteDateToListImpl _value,
      $Res Function(_$DeleteDateToListImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$DeleteDateToListImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteDateToListImpl implements DeleteDateToList {
  const _$DeleteDateToListImpl({required this.index});

  @override
  final int index;

  @override
  String toString() {
    return 'CrudEvent.deleteDateToList(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteDateToListImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteDateToListImplCopyWith<_$DeleteDateToListImpl> get copyWith =>
      __$$DeleteDateToListImplCopyWithImpl<_$DeleteDateToListImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) validateTitle,
    required TResult Function(String subtitle) validateSubTitle,
    required TResult Function(bool isCheck, int index) validateIsCheck,
    required TResult Function() addDateToList,
    required TResult Function(int index) deleteDateToList,
  }) {
    return deleteDateToList(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? validateTitle,
    TResult? Function(String subtitle)? validateSubTitle,
    TResult? Function(bool isCheck, int index)? validateIsCheck,
    TResult? Function()? addDateToList,
    TResult? Function(int index)? deleteDateToList,
  }) {
    return deleteDateToList?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? validateTitle,
    TResult Function(String subtitle)? validateSubTitle,
    TResult Function(bool isCheck, int index)? validateIsCheck,
    TResult Function()? addDateToList,
    TResult Function(int index)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (deleteDateToList != null) {
      return deleteDateToList(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ValidateTitle value) validateTitle,
    required TResult Function(ValidateSubTitle value) validateSubTitle,
    required TResult Function(ValidateIsCheck value) validateIsCheck,
    required TResult Function(AddDateToList value) addDateToList,
    required TResult Function(DeleteDateToList value) deleteDateToList,
  }) {
    return deleteDateToList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ValidateTitle value)? validateTitle,
    TResult? Function(ValidateSubTitle value)? validateSubTitle,
    TResult? Function(ValidateIsCheck value)? validateIsCheck,
    TResult? Function(AddDateToList value)? addDateToList,
    TResult? Function(DeleteDateToList value)? deleteDateToList,
  }) {
    return deleteDateToList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ValidateTitle value)? validateTitle,
    TResult Function(ValidateSubTitle value)? validateSubTitle,
    TResult Function(ValidateIsCheck value)? validateIsCheck,
    TResult Function(AddDateToList value)? addDateToList,
    TResult Function(DeleteDateToList value)? deleteDateToList,
    required TResult orElse(),
  }) {
    if (deleteDateToList != null) {
      return deleteDateToList(this);
    }
    return orElse();
  }
}

abstract class DeleteDateToList implements CrudEvent {
  const factory DeleteDateToList({required final int index}) =
      _$DeleteDateToListImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$DeleteDateToListImplCopyWith<_$DeleteDateToListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CrudState {
  String get title => throw _privateConstructorUsedError;
  String get subTitle => throw _privateConstructorUsedError;
  bool get isCheck => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  List<TodoModel> get todoModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CrudStateCopyWith<CrudState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CrudStateCopyWith<$Res> {
  factory $CrudStateCopyWith(CrudState value, $Res Function(CrudState) then) =
      _$CrudStateCopyWithImpl<$Res, CrudState>;
  @useResult
  $Res call(
      {String title,
      String subTitle,
      bool isCheck,
      int index,
      List<TodoModel> todoModel});
}

/// @nodoc
class _$CrudStateCopyWithImpl<$Res, $Val extends CrudState>
    implements $CrudStateCopyWith<$Res> {
  _$CrudStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? isCheck = null,
    Object? index = null,
    Object? todoModel = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      todoModel: null == todoModel
          ? _value.todoModel
          : todoModel // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CrudStateImplCopyWith<$Res>
    implements $CrudStateCopyWith<$Res> {
  factory _$$CrudStateImplCopyWith(
          _$CrudStateImpl value, $Res Function(_$CrudStateImpl) then) =
      __$$CrudStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String subTitle,
      bool isCheck,
      int index,
      List<TodoModel> todoModel});
}

/// @nodoc
class __$$CrudStateImplCopyWithImpl<$Res>
    extends _$CrudStateCopyWithImpl<$Res, _$CrudStateImpl>
    implements _$$CrudStateImplCopyWith<$Res> {
  __$$CrudStateImplCopyWithImpl(
      _$CrudStateImpl _value, $Res Function(_$CrudStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subTitle = null,
    Object? isCheck = null,
    Object? index = null,
    Object? todoModel = null,
  }) {
    return _then(_$CrudStateImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subTitle: null == subTitle
          ? _value.subTitle
          : subTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isCheck: null == isCheck
          ? _value.isCheck
          : isCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      todoModel: null == todoModel
          ? _value._todoModel
          : todoModel // ignore: cast_nullable_to_non_nullable
              as List<TodoModel>,
    ));
  }
}

/// @nodoc

class _$CrudStateImpl implements _CrudState {
  const _$CrudStateImpl(
      {this.title = "",
      this.subTitle = "",
      this.isCheck = false,
      this.index = 0,
      final List<TodoModel> todoModel = const []})
      : _todoModel = todoModel;

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String subTitle;
  @override
  @JsonKey()
  final bool isCheck;
  @override
  @JsonKey()
  final int index;
  final List<TodoModel> _todoModel;
  @override
  @JsonKey()
  List<TodoModel> get todoModel {
    if (_todoModel is EqualUnmodifiableListView) return _todoModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoModel);
  }

  @override
  String toString() {
    return 'CrudState(title: $title, subTitle: $subTitle, isCheck: $isCheck, index: $index, todoModel: $todoModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CrudStateImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subTitle, subTitle) ||
                other.subTitle == subTitle) &&
            (identical(other.isCheck, isCheck) || other.isCheck == isCheck) &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._todoModel, _todoModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, subTitle, isCheck, index,
      const DeepCollectionEquality().hash(_todoModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CrudStateImplCopyWith<_$CrudStateImpl> get copyWith =>
      __$$CrudStateImplCopyWithImpl<_$CrudStateImpl>(this, _$identity);
}

abstract class _CrudState implements CrudState {
  const factory _CrudState(
      {final String title,
      final String subTitle,
      final bool isCheck,
      final int index,
      final List<TodoModel> todoModel}) = _$CrudStateImpl;

  @override
  String get title;
  @override
  String get subTitle;
  @override
  bool get isCheck;
  @override
  int get index;
  @override
  List<TodoModel> get todoModel;
  @override
  @JsonKey(ignore: true)
  _$$CrudStateImplCopyWith<_$CrudStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
