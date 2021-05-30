import 'package:flutter_modular/flutter_modular.dart';

class RequisitionsModule extends ChildModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [];

  static Inject get to => Inject<RequisitionsModule>.of();
}
