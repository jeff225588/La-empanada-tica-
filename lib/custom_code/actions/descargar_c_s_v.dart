// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert' show utf8;
//Exporto mi dependencia de download
import 'package:download/download.dart';

Future descargarCSV(List<ListaDiariaRecord>? docs) async {
  docs = docs ?? [];
  String contenidoCSV =
      "ProductosCategoria, ProductosCantidad, ProductosUnidad, ProductosDescripcion";
  docs.asMap().forEach((Index, record) => contenidoCSV = contenidoCSV +
      "\n" +
      record.productosCategoria.toString() +
      ',' +
      record.productosCantidad.toString() +
      ',' +
      record.productosUnidad.toString() +
      ',' +
      record.productosDescripcion.toString() +
      ',' +
      record.sucursalDestino.toString() +
      ',' +
      record.fechaDeEntrega.toString());

  final String archivo = "listaDeEnvios.csv";

  var bytes = utf8.encode(contenidoCSV);

  final stream = Stream.fromIterable(bytes);

  return download(stream, archivo);
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
