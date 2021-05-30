// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qr_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QrController on _QrControllerBase, Store {
  final _$isFlashOnAtom = Atom(name: '_QrControllerBase.isFlashOn');

  @override
  bool get isFlashOn {
    _$isFlashOnAtom.reportRead();
    return super.isFlashOn;
  }

  @override
  set isFlashOn(bool value) {
    _$isFlashOnAtom.reportWrite(value, super.isFlashOn, () {
      super.isFlashOn = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_QrControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$_QrControllerBaseActionController =
      ActionController(name: '_QrControllerBase');

  @override
  void toogleFlash() {
    final _$actionInfo = _$_QrControllerBaseActionController.startAction(
        name: '_QrControllerBase.toogleFlash');
    try {
      return super.toogleFlash();
    } finally {
      _$_QrControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isFlashOn: ${isFlashOn},
isLoading: ${isLoading}
    ''';
  }
}
