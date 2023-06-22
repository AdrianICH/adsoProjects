import 'dart:js';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pro013/api/conection.dart';
import 'package:pro013/controlador/contrador_horario.dart';

class consultaGeneral {
  ControlPersonas CC = Get.find();

  void ConsultaAPI(BuildContext context) {
    consultaGeneralPersonas().then((respuesta) {
      CC.Cargalista_recibo(respuesta);
    });
    ConsultaPersonaGenerales(context);
  }

  void ConsultaPersonaGenerales(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext c1) {
          return Obx(
            () => Column(
              children: [
                AppBar(
                  title: Text("Regresar"),
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: CC.recibo?.length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        return Text("${CC.recibo![index].NOMBRE}");
                      }),
                )
              ],
            ),
          );
        });
  }
}
