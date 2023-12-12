import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'h24_cambiar_contrasenna_usuario_widget.dart'
    show H24CambiarContrasennaUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class H24CambiarContrasennaUsuarioModel
    extends FlutterFlowModel<H24CambiarContrasennaUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for correoUsuario widget.
  FocusNode? correoUsuarioFocusNode;
  TextEditingController? correoUsuarioController;
  String? Function(BuildContext, String?)? correoUsuarioControllerValidator;
  // State field(s) for txtcontrasennausuario widget.
  FocusNode? txtcontrasennausuarioFocusNode;
  TextEditingController? txtcontrasennausuarioController;
  late bool txtcontrasennausuarioVisibility;
  String? Function(BuildContext, String?)?
      txtcontrasennausuarioControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtcontrasennausuarioVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    correoUsuarioFocusNode?.dispose();
    correoUsuarioController?.dispose();

    txtcontrasennausuarioFocusNode?.dispose();
    txtcontrasennausuarioController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
