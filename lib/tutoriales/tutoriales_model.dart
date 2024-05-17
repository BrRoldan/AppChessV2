import '/flutter_flow/flutter_flow_util.dart';
import 'tutoriales_widget.dart' show TutorialesWidget;
import 'package:flutter/material.dart';

class TutorialesModel extends FlutterFlowModel<TutorialesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
