import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_lista_de_envio_en_proceso_widget.dart'
    show EditarListaDeEnvioEnProcesoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarListaDeEnvioEnProcesoModel
    extends FlutterFlowModel<EditarListaDeEnvioEnProcesoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtProducto widget.
  FocusNode? txtProductoFocusNode;
  TextEditingController? txtProductoController;
  String? Function(BuildContext, String?)? txtProductoControllerValidator;
  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadController;
  String? Function(BuildContext, String?)? txtCantidadControllerValidator;
  // State field(s) for txtCategoria widget.
  FocusNode? txtCategoriaFocusNode;
  TextEditingController? txtCategoriaController;
  String? Function(BuildContext, String?)? txtCategoriaControllerValidator;
  // State field(s) for DropDownSeleccionarSucursal widget.
  String? dropDownSeleccionarSucursalValue;
  FormFieldController<String>? dropDownSeleccionarSucursalValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    txtProductoFocusNode?.dispose();
    txtProductoController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadController?.dispose();

    txtCategoriaFocusNode?.dispose();
    txtCategoriaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
