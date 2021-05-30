import 'package:controle_de_requisicao/app/commons/item_value.dart';
import 'package:controle_de_requisicao/app/core/usecase.dart';
import 'package:controle_de_requisicao/app/domain/repositories/cart_repository.dart';

class AddItemCardUseCase implements UseCase<void, AddItemCartUseCaseParam> {
  final CartRepository _repository;
  AddItemCardUseCase(this._repository);
  List<ItemValue> _items;

  @override
  Future<void> call(AddItemCartUseCaseParam params) async {
    this._items = await _repository.getAll();
    //if (params.item.isNotEmpty /*is ProductEntity */) {
    return _addProductEntityToCart(params.item);
    // }
  }

  Future _addProductEntityToCart(dynamic itemValue) {
    var itemsExist = this
        ._items
        .where(
          (e) => e.value["product_id"] == itemValue.productId,
        )
        .toList();
    return this._addItemToCart(
      itemValue.qtyRemaining,
      itemValue.existsItem,
      itemValue.automaticDown,
      itemsExist.length,
      itemValue.productDescription,
      itemValue.partDescription,
      itemValue.codeReturn,
      itemValue,
    );
  }

  Future _addItemToCart(
    int qtyRemaining,
    int existsItem,
    int automaticDown,
    int sameItemAmount,
    String label,
    String description,
    int returnCode,
    dynamic value,
  ) {
    return this._repository.add(
          ItemValue(
            label,
            description,
            value,
          ),
        );
  }
}

class AddItemCartUseCaseParam {
  final dynamic item;

  AddItemCartUseCaseParam(this.item);
}
