import 'package:controle_de_requisicao/app/modules/pages/qrCode/qr_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_beep/flutter_beep.dart';

class QrPage extends StatefulWidget {
  @override
  _QrPageState createState() => _QrPageState();
}

class _QrPageState extends State<QrPage> {
  void initState() {
    super.initState();
  }

  QrController scannerController;

  String qrCode = "";
  QRViewController controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Center(
          child: Text('Leia o QR code'),
        ),
      ),
      body: Stack(
        children: [
          _body(),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 48,
              height: 48,
              margin: EdgeInsets.all(16),
              child: TextButton(
                onPressed: () {
                  this.controller?.toggleFlash();
                  this.scannerController?.toogleFlash();
                },
                child: Center(
                  child: Observer(
                    builder: (_) {
                      return Icon(
                        ( //this.scannerController.isFlashOn   ? Icons.flash_off :
                            Icons.flash_on),
                        color: Colors.white,
                        size: 28,
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
          //Observer(
          // builder: (_) {              return
          _createLoading(),
          // },
          // ),
        ],
      ),
    );
  }

  Widget _body() {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: QRView(
            key: qrKey,
            onQRViewCreated: _onQRViewCreated,
            overlay: QrScannerOverlayShape(
              borderColor: Colors.red,
              borderRadius: 10,
              borderLength: 30,
              borderWidth: 10,
              cutOutSize: 300,
            ),
          ),
        ),
      ],
    );
  }

  Widget _createLoading() {
    /*if (this.scannerController.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }*/
    return Container();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen(
      (scanData) {
        //print("#### codigo: $scanData");
        //this.qrCode = scanData;
        this.controller.pauseCamera();
        Navigator.pushNamed(context, 'requisitions');
        FlutterBeep.beep();
        Fluttertoast.showToast(
                msg: 'Usuario encontrado',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0)
            .then((value) {
          this.qrCode = "";
          this.controller.resumeCamera();
        });
      },
    );
  }
}
