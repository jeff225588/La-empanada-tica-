import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/productos/h7_agregar_productos/h7_agregar_productos_widget.dart';
import 'h5_h6_filtrar_buscar_producto_widget.dart'
    show H5H6FiltrarBuscarProductoWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';

class H5H6FiltrarBuscarProductoModel
    extends FlutterFlowModel<H5H6FiltrarBuscarProductoWidget> {
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
