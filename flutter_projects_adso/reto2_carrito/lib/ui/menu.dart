import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto2_carrito/controllers/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple[400]),
              child: const UserAccountsDrawerHeader(
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: AssetImage("user.jpg")),
                  accountName: Text(
                    "Adrian Isael Cuerva Hernandez",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountEmail: Text("adrian@hotmail.com")),
            ),
            Divider(),
            Expanded(
                // Aca se construye un ListView para la navegación entre las diferentes partes de la aplicacion
                child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text("Inicio"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(0);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.monetization_on_outlined),
                  title: Text("Comprar"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(1);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.shopping_cart),
                  title: Text("Mi carrito"),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(2);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Acerca de..."),
                  trailing: Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.pop(context);
                    Control.cambiarPosicion(3);
                  },
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
