// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'requisitions_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RequisitionsController on _RequisitionsControllerBase, Store {
  final _$isLoadingAtom = Atom(name: '_RequisitionsControllerBase.isLoading');

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

  final _$listCartAtom = Atom(name: '_RequisitionsControllerBase.listCart');

  @override
  ObservableList<ItemValue> get listCart {
    _$listCartAtom.reportRead();
    return super.listCart;
  }

  @override
  set listCart(ObservableList<ItemValue> value) {
    _$listCartAtom.reportWrite(value, super.listCart, () {
      super.listCart = value;
    });
  }

  final _$_RequisitionsControllerBaseActionController =
      ActionController(name: '_RequisitionsControllerBase');

  @override
  void addItemToCart(ItemValue itemValue) {
    final _$actionInfo = _$_RequisitionsControllerBaseActionController
        .startAction(name: '_RequisitionsControllerBase.addItemToCart');
    try {
      return super.addItemToCart(itemValue);
    } finally {
      _$_RequisitionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteItemToCart(ItemValue itemValue) {
    final _$actionInfo = _$_RequisitionsControllerBaseActionController
        .startAction(name: '_RequisitionsControllerBase.deleteItemToCart');
    try {
      return super.deleteItemToCart(itemValue);
    } finally {
      _$_RequisitionsControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
listCart: ${listCart}
    ''';
  }
}
