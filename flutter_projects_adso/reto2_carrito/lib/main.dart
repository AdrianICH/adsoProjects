import 'package:flutter/material.dart';
import 'package:reto2_carrito/controllers/controladorGeneral.dart';
import 'package:reto2_carrito/ui/home.dart';
import 'package:get/get.dart';

void main() {
  Get.put(
      controladorGeneral()); // Aqui se inicializa el controladorGeneral para la app
  runApp(const MyApp());
}
