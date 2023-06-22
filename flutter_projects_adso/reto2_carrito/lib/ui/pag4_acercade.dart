import 'package:flutter/material.dart';

class pag4_acercade extends StatefulWidget {
  const pag4_acercade({super.key});

  @override
  State<pag4_acercade> createState() => _pag4_acercadeState();
}

class _pag4_acercadeState extends State<pag4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          FractionallySizedBox(
            widthFactor: 0.9,
            child: Center(
              child: Column(children: const [
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("1114902475"),
                      subtitle: Text("Cedula de ciudadania"),
                      leading: Icon(Icons.assignment_ind_rounded),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("Adrian Isael"),
                      subtitle: Text("Nombres"),
                      leading: Icon(Icons.person),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("Cuerva Hernandez"),
                      subtitle: Text("Apellidos"),
                      leading: Icon(Icons.person_outline),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("adriancuerva2004@gmail.com"),
                      subtitle: Text("Correo electronico"),
                      leading: Icon(Icons.mail_rounded),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("3019872635"),
                      subtitle: Text("Telefono"),
                      leading: Icon(Icons.phone_callback_outlined),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 232, 250, 255),
                  child: Padding(
                    padding: EdgeInsets.all(5.0),
                    child: ListTile(
                      title: Text("Cll 75BN #2-67"),
                      subtitle: Text("Direccion"),
                      leading: Icon(Icons.house),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
