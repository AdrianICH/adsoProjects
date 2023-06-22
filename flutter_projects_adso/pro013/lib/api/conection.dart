import 'dart:convert';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<persona>> consultaGeneralPersonas() async {
  var url = Uri.parse("http://localhost/general/api.php");
  final response = await http.post(url, body: {});

  if (response.statusCode == 200) {
    return compute(pasaraListapqrs, response.body);
  } else {
    throw Exception('Failed to create album.');
  }
}

List<persona> pasaraListapqrs(String respuestaBody) {
  final pasar = json.decode(respuestaBody).cast<Map<String, dynamic>>();

  return pasar.map<persona>((json) => persona.fromJson(json)).toList();
}

class persona {
  final ID;
  final CODIGO;
  final NOMBRE;
  final SEXO;

  persona({
    this.ID,
    this.CODIGO,
    this.NOMBRE,
    this.SEXO,
  });

  factory persona.fromJson(Map<String, dynamic> json) {
    return persona(
        ID: json['ID'],
        CODIGO: json['CODIGO'],
        NOMBRE: json['NOMBRE'],
        SEXO: json['SEXO']);
  }
}
