import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_carrito/controllers/controladorGeneral.dart';

class pag2_comprar extends StatefulWidget {
  const pag2_comprar({super.key});

  @override
  State<pag2_comprar> createState() => _pag2_comprarState();
}

class _pag2_comprarState extends State<pag2_comprar> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(
        () => ListView.builder(
          itemCount: Control.pro.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Image(image: AssetImage(Control.pro[index].imagen)),
                title: Text(
                    "${Control.pro[index].nombre} || ${Control.pro[index].precio.toString()} COP"),
                subtitle: Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          int sumar = Control.pro[index].cantidad + 1;
                          Control.cambiarCantidad(index, sumar);
                          Control.pro.refresh();
                        },
                        icon: const Icon(Icons.add_circle_outline_rounded)),
                    VerticalDivider(),
                    IconButton(
                        onPressed: () {
                          int restar = Control.pro[index].cantidad - 1;
                          if (restar >= 0) {
                            Control.cambiarCantidad(index, restar);
                          }
                          Control.pro.refresh();
                        },
                        icon: Icon(Icons.remove_circle_outline_rounded))
                  ],
                ),
                trailing: Text(
                  "Cantidad = ${Control.pro[index].cantidad}",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
