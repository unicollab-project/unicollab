import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'virtual_study_space_widget.dart' show VirtualStudySpaceWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
