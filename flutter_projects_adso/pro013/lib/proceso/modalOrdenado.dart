import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:pro013/api/conection.dart';
import 'package:pro013/controlador/contrador_horario.dart';

class consultaOrdenada {
  ControlPersonas CC = Get.find();

  void modalHorario(BuildContext context) {
    consultaGeneralPersonas().then((respuesta) {
      CC.Cargalista_recibo(respuesta);
    });
    modalCargaHorario(context);
  }

  void modalCargaHorario(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext c2) {
          return Obx(() => CC.recibo!.isEmpty == false
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      children: [
                        AppBar(
                          title: Text("Regresar"),
                        ),
                        Divider(),
                        Expanded(
                          child: ListView.builder(
                            itemCount: CC.recibo?.length ?? 0,
                            itemBuilder: (BuildContext context, int index) {
                              return Card(
                                color: Colors.blue[100],
                                child: ListTile(
                                    leading: Text(CC.recibo![index].ID),
                                    trailing: Text(CC.recibo![index].CODIGO),
                                    title: Text(CC.recibo![index].NOMBRE),
                                    subtitle: Text(CC.recibo![index].SEXO)),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              : Container(
                  child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(child: CircularProgressIndicator()),
                )));
        });
  }
}
