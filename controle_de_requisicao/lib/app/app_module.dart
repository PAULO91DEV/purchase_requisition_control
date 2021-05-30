import 'package:controle_de_requisicao/app/app_controller.dart';
import 'package:controle_de_requisicao/app/app_widget.dart';
import 'package:controle_de_requisicao/app/domain/repositories/cart_repository.dart';
import 'package:controle_de_requisicao/app/domain/usecases/add_Item_cart_usecase.dart';
import 'package:controle_de_requisicao/app/domain/usecases/delete_item_cart_usecase.dart';
import 'package:controle_de_requisicao/app/domain/usecases/get_all_items_cart_usecase.dart';
import 'package:controle_de_requisicao/app/modules/pages/login/login_controller.dart';
import 'package:controle_de_requisicao/app/modules/pages/login/login_page.dart';
import 'package:controle_de_requisicao/app/modules/pages/qrCode/qr_page.dart';
import 'package:controle_de_requisicao/app/modules/pages/requisitions/requisitions_controller.dart';
import 'package:controle_de_requisicao/app/modules/pages/requisitions/requisitions_page.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  Dio createDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
    ));
    return dio;
  }

  @override
  List<Bind> get binds => [
//   No Binds faremos um array de dependencias, toda Classe colocada dentro desse array podera ser recuperado em qualquer
//    parte do aplicativo(esse é o modulo principal)
        Bind((i) => AppController()),
        Bind((i) => LoginController()),
        Bind((i) => createDio()),
        Bind(
          (i) => RequisitionsController(
            i.get<DeleteItemCartUseCase>(),
            i.get<GetAllItemsCartUseCase>(),
            i.get<AddItemCardUseCase>(),
          ),
        ),
        Bind((i) => GetAllItemsCartUseCase(i.get<CartRepository>())),
        Bind((i) => DeleteItemCartUseCase(i.get<CartRepository>())),
        Bind((i) => AddItemCardUseCase(i.get<CartRepository>())),
        Bind((i) => CartRepository()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => LoginPage()),
        ModularRouter('/qr', child: (_, args) => QrPage()),
        ModularRouter('/requisitions', child: (_, args) => RequisitionsPage()),
      ];

  @override
  Widget get bootstrap => AppWidget();
}
