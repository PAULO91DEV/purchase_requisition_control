import 'package:controle_de_requisicao/app/commons/item_value.dart';
import 'package:controle_de_requisicao/app/modules/pages/requisitions/requisitions_controller.dart';
import 'package:controle_de_requisicao/app/modules/widgets/bottom_confirm_items.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RequisitionsPage extends StatefulWidget {
  @override
  _RequisitionsPageState createState() => _RequisitionsPageState();
}

class _RequisitionsPageState extends State<RequisitionsPage> {
  final controller = Modular.get<RequisitionsController>();
  ItemValue itemvalue;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop(true);
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          elevation: 0,
          title: Text('Requisições'),
          actions: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.only(),
                  icon: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 38.0,
                  ),
                  onPressed: () {
                    confirmBottonSheet();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 22, top: 12),
                  child: Text(
                    "1",
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
        body: Container(
            color: Colors.indigo[900],
            padding:
                EdgeInsets.only(top: 16.0, bottom: 90.0, left: 10, right: 10),
            width: double.infinity,
            //child: Observer(
            //builder: (_) {              return
            child: _body()
            //},
            //),
            ),
      ),
    );
  }

  Widget _body() {
    this.controller.isLoading = false;
    if (this.controller.isLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return Column(
      children: [
        Text(
          "NOME",
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          "Setor",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
        SizedBox(
          height: 15.0,
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.lightBlue,
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //_createImage(image),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "1587 - Parafuso 15 X 23",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //_createImage(image),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Quantidade requisitada : 13",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.grey[200],
                            ),
                            margin: EdgeInsets.symmetric(horizontal: 126),
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            child: TextFormField(
                              readOnly: false,
                              initialValue: "13",
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Retirar',
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                color: Colors.lightBlue,
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //_createImage(image),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "2548 - Folha sufite A4",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          //_createImage(image),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Quantidade requisitada : 2",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 126),
                            padding: EdgeInsets.symmetric(horizontal: 16.0),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.0),
                              color: Colors.grey[200],
                            ),
                            child: TextFormField(
                              readOnly: false,
                              initialValue: "13",
                              style: TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                labelText: 'Retirar',
                                labelStyle: TextStyle(
                                  fontSize: 20,
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void confirmBottonSheet() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Observer(builder: (_) {
          if (this.controller.listCart.isEmpty) {
            return createEmptyCartList();
          }
          return createCartItemsList();
        });
      },
    );
  }

  SingleChildScrollView createCartItemsList() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 16,
            ),
            Text(
              "Items adicionados",
              style: TextStyle(
                fontSize: 20,
                color: Colors.indigo[900],
              ),
              // style: Colors.blue,
            ),
            SizedBox(
              height: 16,
            ),
            ListView.builder(
              padding: EdgeInsets.only(left: 20),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: this.controller.listCart.length,
              itemBuilder: (context, index) {
                ItemValue itemValue = this.controller.listCart[index];
                return ListTile(
                  leading: new Icon(
                    Icons.add_shopping_cart,
                    color: Colors.indigo[900],
                  ),
                  trailing: FloatingActionButton(
                    child: Icon(
                      Icons.delete,
                      color: Colors.indigo[900],
                    ),
                    onPressed: () {
                      this.controller.deleteItemToCart(itemValue);
                    },
                  ),
                  title: new Text('${itemValue.label} - ${itemValue.detail}'),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            Observer(
              builder: (_) {
                if (this.controller.isLoading) {
                  return Column(
                    children: [
                      Container(
                        height: 48,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    ],
                  );
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: ButtonConfirmWidget(
                      text: "Confirmar",
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  top: 280, bottom: 270, right: 20, left: 20),
                              child: AlertDialog(
                                title: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Text(
                                      "title",
                                    ),
                                  ),
                                ),
                                content: Column(
                                  children: [
                                    Text(
                                      "subtitle",
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      }),
                );
              },
            ),
            SizedBox(
              height: 16,
            ),
            /*Observer(builder: (_) {
                return chackErrorMessenger(
                    this._controller.returnMessage.isNotEmpty);
              }),*/
          ],
        ),
      ),
    );
  }

  Container createEmptyCartList() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 94, vertical: 24),
            color: Colors.grey[200],
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 25.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //_createImage(image),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "1548 - Parafuso 15 X 23",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //_createImage(image),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Quantidade retirada : 3",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),

                    TextButton(
                      child: Icon(
                        Icons.delete,
                        color: Colors.indigo[900],
                      ),
                      onPressed: () {
                        this.controller.deleteItemToCart(itemvalue);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: ButtonConfirmWidget(
              text: "Confirmar",
              onPressed: () {
                Navigator.pushNamed(context, 'qr');
              },
            ),
          ),
        ],
      ),
    );
  }

  Container createItem(
    String image,
    String text,
  ) {
    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      color: Colors.lightBlue,
      child: TextButton(
        onPressed: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //_createImage(image),
            Row(
              children: [
                Expanded(
                  child: Text(
                    text,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
