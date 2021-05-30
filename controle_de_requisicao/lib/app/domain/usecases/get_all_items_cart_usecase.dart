import 'package:controle_de_requisicao/app/commons/item_value.dart';
import 'package:controle_de_requisicao/app/core/usecase.dart';
import 'package:controle_de_requisicao/app/domain/repositories/cart_repository.dart';

class GetAllItemsCartUseCase implements UseCase<List<ItemValue>, NoParams> {
  final CartRepository _repository;
  GetAllItemsCartUseCase(this._repository);

  @override
  Future<List<ItemValue>> call(NoParams params) {
    return this._repository.getAll();
  }
}
