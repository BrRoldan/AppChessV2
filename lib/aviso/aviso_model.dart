import '/flutter_flow/flutter_flow_util.dart';
import 'aviso_widget.dart' show AvisoWidget;
import 'package:flutter/material.dart';

class AvisoModel extends FlutterFlowModel<AvisoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
