import '/flutter_flow/flutter_flow_util.dart';
import 'video1_widget.dart' show Video1Widget;
import 'package:flutter/material.dart';

class Video1Model extends FlutterFlowModel<Video1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
