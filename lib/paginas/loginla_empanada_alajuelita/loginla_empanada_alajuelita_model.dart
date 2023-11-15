import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'loginla_empanada_alajuelita_widget.dart'
    show LoginlaEmpanadaAlajuelitaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginlaEmpanadaAlajuelitaModel
    extends FlutterFlowModel<LoginlaEmpanadaAlajuelitaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoController;
  String? Function(BuildContext, String?)? txtCorreoControllerValidator;
  // State field(s) for txtPassword widget.
  FocusNode? txtPasswordFocusNode;
  TextEditingController? txtPasswordController;
  late bool txtPasswordVisibility;
  String? Function(BuildContext, String?)? txtPasswordControllerValidator;
  // State field(s) for txtPassword1 widget.
  FocusNode? txtPassword1FocusNode;
  TextEditingController? txtPassword1Controller;
  late bool txtPassword1Visibility;
  String? Function(BuildContext, String?)? txtPassword1ControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtPasswordVisibility = false;
    txtPassword1Visibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    txtCorreoFocusNode?.dispose();
    txtCorreoController?.dispose();

    txtPasswordFocusNode?.dispose();
    txtPasswordController?.dispose();

    txtPassword1FocusNode?.dispose();
    txtPassword1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
