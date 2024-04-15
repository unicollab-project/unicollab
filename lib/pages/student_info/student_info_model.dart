import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'student_info_widget.dart' show StudentInfoWidget;
import 'package:flutter/material.dart';

class StudentInfoModel extends FlutterFlowModel<StudentInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for stateName widget.
  String? stateNameValue1;
  FormFieldController<String>? stateNameValueController1;
  // State field(s) for cityName widget.
  String? cityNameValue;
  FormFieldController<String>? cityNameValueController;
  // State field(s) for stateName widget.
  String? stateNameValue2;
  FormFieldController<String>? stateNameValueController2;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();
  }
}
