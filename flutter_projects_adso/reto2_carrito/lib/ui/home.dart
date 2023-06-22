import 'package:flutter/material.dart';
import 'package:reto2_carrito/controllers/controladorGeneral.dart';
import 'package:reto2_carrito/ui/menu.dart';
import 'package:reto2_carrito/ui/pag1_inicio.dart';
import 'package:reto2_carrito/ui/pag2_comprar.dart';
import 'package:reto2_carrito/ui/pag3_micarrito.dart';
import 'package:reto2_carrito/ui/pag4_acercade.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Reto 2',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'PC MasterShop'),
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

// Para acceder a las paginas con más facilidad, se guardan en una lista
List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_micarrito(),
  pag4_acercade()
];

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
