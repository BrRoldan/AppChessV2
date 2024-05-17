import '/flutter_flow/flutter_flow_util.dart';
import 'educacion_widget.dart' show EducacionWidget;
import 'package:flutter/material.dart';

class EducacionModel extends FlutterFlowModel<EducacionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
