import 'package:controle_de_requisicao/app/modules/pages/login/login_controller.dart';
import 'package:controle_de_requisicao/app/modules/widgets/rounded_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 26.0, right: 26.0),
        color: Colors.indigo[900],
        alignment: Alignment.center,
        child: Form(
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    right: 88.0, left: 88.0, bottom: 140.0, top: 140.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.grey[300]),
                  ),
                  padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Column(children: [
                    Image.asset(
                      "assets/image/logo_vidraria.png",
                      width: 250.0,
                    ),
                  ]),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Observer(builder: (_) {
                  return TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Login',
                      labelStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.indigo,
                      ),
                      icon: Icon(
                        Icons.person,
                        color: Colors.indigo,
                        size: 24.0,
                      ),
                    ),
                    obscureText: true,
                  );
                }),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9.0),
                  color: Colors.white,
                ),
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Observer(builder: (_) {
                  return TextFormField(
                    decoration: InputDecoration(
                        labelText: 'Senha',
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.indigo,
                        ),
                        icon: Icon(
                          Icons.lock_outline,
                          color: Colors.indigo,
                          size: 24.0,
                        )),
                    obscureText: true,
                  );
                }),
              ),
              Observer(builder: (_) {
                return chackErrorMessenger(
                  false,
                );
              }),
              SizedBox(
                height: 50.0,
              ),
              RoundedButtonWidget(
                text: 'ENTRAR',
                onPressed: () {
                  Navigator.pushNamed(context, 'qr');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget chackErrorMessenger(bool isShow) {
    if (isShow) {
      return Padding(
        padding: const EdgeInsets.only(left: 24, top: 8),
        child: Row(
          children: [
            Icon(
              Icons.error,
              color: Colors.redAccent,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              "",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      );
    }
    return Container();
  }
}
