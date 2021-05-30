import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'qr_controller.g.dart';

@Injectable()
class QrController = _QrControllerBase with _$QrController;

abstract class _QrControllerBase with Store {
  @observable
  bool isFlashOn = false;

  @observable
  bool isLoading = false;

  @action
  void toogleFlash() => this.isFlashOn = !this.isFlashOn;
}
