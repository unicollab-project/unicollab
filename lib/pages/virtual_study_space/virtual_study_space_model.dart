import '/flutter_flow/flutter_flow_util.dart';
import 'virtual_study_space_widget.dart' show VirtualStudySpaceWidget;
import 'package:flutter/material.dart';

class VirtualStudySpaceModel extends FlutterFlowModel<VirtualStudySpaceWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for todoItem widget.
  FocusNode? todoItemFocusNode;
  TextEditingController? todoItemTextController;
  String? Function(BuildContext, String?)? todoItemTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    todoItemFocusNode?.dispose();
    todoItemTextController?.dispose();
  }
}
