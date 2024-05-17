import '/flutter_flow/flutter_flow_util.dart';
import 'pdf_widget.dart' show PdfWidget;
import 'package:flutter/material.dart';

class PdfModel extends FlutterFlowModel<PdfWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
