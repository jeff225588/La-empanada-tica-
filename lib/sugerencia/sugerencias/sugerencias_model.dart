import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'sugerencias_widget.dart' show SugerenciasWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class SugerenciasModel extends FlutterFlowModel<SugerenciasWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtSugerencia widget.
  FocusNode? txtSugerenciaFocusNode;
  TextEditingController? txtSugerenciaController;
  String? Function(BuildContext, String?)? txtSugerenciaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    txtSugerenciaFocusNode?.dispose();
    txtSugerenciaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
