import '/flutter_flow/flutter_flow_util.dart';
import 'resultados_widget.dart' show ResultadosWidget;
import 'package:flutter/material.dart';

class ResultadosModel extends FlutterFlowModel<ResultadosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
