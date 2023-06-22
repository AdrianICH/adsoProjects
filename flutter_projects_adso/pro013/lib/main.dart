import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro013/controlador/contrador_horario.dart';
import 'proceso/modalGeneral.dart';
import 'proceso/modalOrdenado.dart';

void main() {
  Get.put(ControlPersonas());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Base de Datos - Usuarios"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        consultaGeneral().ConsultaAPI(context);
                      },
                      icon: Icon(Icons.search),
                      label: Text("Consultar")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton.icon(
                      onPressed: () {
                        consultaOrdenada().modalHorario(context);
                      },
                      icon: Icon(Icons.search_off),
                      label: Text("Consultar Mejor")),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
