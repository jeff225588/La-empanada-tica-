import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'h24_cambiar_contrasenna_usuario_widget.dart'
    show H24CambiarContrasennaUsuarioWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class H24CambiarContrasennaUsuarioModel
    extends FlutterFlowModel<H24CambiarContrasennaUsuarioWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for correoUsuario widget.
  FocusNode? correoUsuarioFocusNode;
  TextEditingController? correoUsuarioController;
  String? Function(BuildContext, String?)? correoUsuarioControllerValidator;
  // State field(s) for ContrasennaUsuario widget.
  FocusNode? contrasennaUsuarioFocusNode;
  TextEditingController? contrasennaUsuarioController;
  late bool contrasennaUsuarioVisibility;
  String? Function(BuildContext, String?)?
      contrasennaUsuarioControllerValidator;
  // State field(s) for txtverificarcontrasenna widget.
  FocusNode? txtverificarcontrasennaFocusNode;
  TextEditingController? txtverificarcontrasennaController;
  late bool txtverificarcontrasennaVisibility;
  String? Function(BuildContext, String?)?
      txtverificarcontrasennaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contrasennaUsuarioVisibility = false;
    txtverificarcontrasennaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    correoUsuarioFocusNode?.dispose();
    correoUsuarioController?.dispose();

    contrasennaUsuarioFocusNode?.dispose();
    contrasennaUsuarioController?.dispose();

    txtverificarcontrasennaFocusNode?.dispose();
    txtverificarcontrasennaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
