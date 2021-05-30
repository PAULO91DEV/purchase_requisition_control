import 'package:controle_de_requisicao/app/commons/item_value.dart';
import 'package:controle_de_requisicao/app/core/usecase.dart';
import 'package:controle_de_requisicao/app/domain/repositories/cart_repository.dart';

class DeleteItemCartUseCase
    implements UseCase<void, DeleteItemCartUseCaseParams> {
  final CartRepository _repository;
  DeleteItemCartUseCase(
    this._repository,
  );

  @override
  Future<void> call(
    DeleteItemCartUseCaseParams params,
  ) {
    return this._repository.remove(params._itemValue);
  }
}

class DeleteItemCartUseCaseParams {
  final ItemValue _itemValue;
  DeleteItemCartUseCaseParams(
    this._itemValue,
  );
}
