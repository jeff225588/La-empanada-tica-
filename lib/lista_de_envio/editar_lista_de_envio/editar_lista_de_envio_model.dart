import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_lista_de_envio_widget.dart' show EditarListaDeEnvioWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarListaDeEnvioModel
    extends FlutterFlowModel<EditarListaDeEnvioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for txtProducto widget.
  FocusNode? txtProductoFocusNode;
  TextEditingController? txtProductoController;
  String? Function(BuildContext, String?)? txtProductoControllerValidator;
  String? _txtProductoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for txtCantidad widget.
  FocusNode? txtCantidadFocusNode;
  TextEditingController? txtCantidadController;
  String? Function(BuildContext, String?)? txtCantidadControllerValidator;
  String? _txtCantidadControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    return null;
  }

  // State field(s) for DropDownCategoria widget.
  String? dropDownCategoriaValue;
  FormFieldController<String>? dropDownCategoriaValueController;
  // State field(s) for DropDownSucursal widget.
  String? dropDownSucursalValue;
  FormFieldController<String>? dropDownSucursalValueController;
  DateTime? datePicked;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtProductoControllerValidator = _txtProductoControllerValidator;
    txtCantidadControllerValidator = _txtCantidadControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    txtProductoFocusNode?.dispose();
    txtProductoController?.dispose();

    txtCantidadFocusNode?.dispose();
    txtCantidadController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
