import '/flutter_flow/flutter_flow_util.dart';
import 'lecciones_widget.dart' show LeccionesWidget;
import 'package:flutter/material.dart';

class LeccionesModel extends FlutterFlowModel<LeccionesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
