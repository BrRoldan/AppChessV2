import '/flutter_flow/flutter_flow_util.dart';
import 'compartir_r_widget.dart' show CompartirRWidget;
import 'package:flutter/material.dart';

class CompartirRModel extends FlutterFlowModel<CompartirRWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
