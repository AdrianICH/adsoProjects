import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_carrito/controllers/controladorGeneral.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class pag3_micarrito extends StatefulWidget {
  const pag3_micarrito({super.key});

  @override
  State<pag3_micarrito> createState() => _pag3_micarritoState();
}

class _pag3_micarritoState extends State<pag3_micarrito> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: Control.pro.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Control.pro[index].cantidad == 0
                        ? Text("", style: TextStyle(fontSize: 0))
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ListTile(
                              leading: Image(
                                  image: AssetImage(Control.pro[index].imagen)),
                              title: Text("${Control.pro[index].nombre}"),
                              subtitle: Text(
                                  "Precio: ${Control.pro[index].precio} || Cantidad: ${Control.pro[index].cantidad}"),
                              trailing: Text(
                                "${Control.pro[index].cantidad * Control.pro[index].precio}",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                          );
                  },
                ),
              ),
              Divider(),
              Text(
                "Total a pagar: ${Control.calcularTotal()}",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton.icon(
                    onPressed: () {
                      if (Control.calcularTotal() > 0) {
                        Alert(
                            context: context,
                            title: "ATENCION!!!",
                            desc: "Compra realizada Satisfactoriamente",
                            buttons: [
                              DialogButton(
                                child: Text(
                                  "Cerrar",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                onPressed: () {
                                  Control.limpiarCarrito();
                                  Navigator.pop(context);
                                  Control.cambiarPosicion(0);
                                },
                              )
                            ]).show();
                      }
                    },
                    icon: Icon(Icons.done),
                    label: Text("Comprar")),
              )
            ],
          ),
        ));
  }
}
