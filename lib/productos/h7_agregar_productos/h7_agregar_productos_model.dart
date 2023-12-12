import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'h7_agregar_productos_widget.dart' show H7AgregarProductosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';

class H7AgregarProductosModel
    extends FlutterFlowModel<H7AgregarProductosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDownSeleccionarSucursal widget.
  String? dropDownSeleccionarSucursalValue;
  FormFieldController<String>? dropDownSeleccionarSucursalValueController;
  DateTime? datePicked;
  // State field(s) for CountControllerUnidades widget.
  int? countControllerUnidadesValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
