import '/flutter_flow/flutter_flow_util.dart';
import 'update_page_widget.dart' show UpdatePageWidget;
import 'package:flutter/material.dart';

class UpdatePageModel extends FlutterFlowModel<UpdatePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
