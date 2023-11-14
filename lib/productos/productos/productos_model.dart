import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/productos/productos_agregar_a_listadeenvio/productos_agregar_a_listadeenvio_widget.dart';
import 'productos_widget.dart' show ProductosWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class ProductosModel extends FlutterFlowModel<ProductosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldBusqueda widget.
  FocusNode? textFieldBusquedaFocusNode;
  TextEditingController? textFieldBusquedaController;
  String? Function(BuildContext, String?)? textFieldBusquedaControllerValidator;
  List<ProductosRecord> simpleSearchResults = [];

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldBusquedaFocusNode?.dispose();
    textFieldBusquedaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
