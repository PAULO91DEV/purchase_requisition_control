import 'package:controle_de_requisicao/app/commons/item_value.dart';
import 'package:controle_de_requisicao/app/core/usecase.dart';
import 'package:controle_de_requisicao/app/domain/usecases/add_Item_cart_usecase.dart';
import 'package:controle_de_requisicao/app/domain/usecases/delete_item_cart_usecase.dart';
import 'package:controle_de_requisicao/app/domain/usecases/get_all_items_cart_usecase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'requisitions_controller.g.dart';

@Injectable()
class RequisitionsController = _RequisitionsControllerBase
    with _$RequisitionsController;

abstract class _RequisitionsControllerBase with Store {
  final DeleteItemCartUseCase deleteItemCartUseCase;
  final GetAllItemsCartUseCase getAllItemsCartUseCase;
  final AddItemCardUseCase addItemCardUseCase;

  _RequisitionsControllerBase(
    this.deleteItemCartUseCase,
    this.getAllItemsCartUseCase,
    this.addItemCardUseCase,
  );

  @observable
  bool isLoading = true;

  @observable
  ObservableList<ItemValue> listCart = ObservableList();

  @action
  void addItemToCart(ItemValue itemValue) {
    this
        .addItemCardUseCase
        .call(
          AddItemCartUseCaseParam(itemValue),
        )
        .then(
      (_) {
        return this.getAllItemsCartUseCase.call(
              NoParams(),
            );
      },
    ).then((value) {
      this.listCart = value.asObservable();
    });
  }

  @action
  void deleteItemToCart(ItemValue itemValue) {
    this
        .deleteItemCartUseCase
        .call(DeleteItemCartUseCaseParams(itemValue))
        .then((_) {
      return this.getAllItemsCartUseCase.call(NoParams());
    }).then((cartItems) {
      this.listCart = cartItems.asObservable();
    });
  }
}
