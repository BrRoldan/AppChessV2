import '/flutter_flow/flutter_flow_util.dart';
import 'compartidos_widget.dart' show CompartidosWidget;
import 'package:flutter/material.dart';

class CompartidosModel extends FlutterFlowModel<CompartidosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
