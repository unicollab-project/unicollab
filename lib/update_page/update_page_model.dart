import '/flutter_flow/flutter_flow_util.dart';
import 'update_page_widget.dart' show UpdatePageWidget;
import 'package:flutter/material.dart';

class UpdatePageModel extends FlutterFlowModel<UpdatePageWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameController;
  String? Function(BuildContext, String?)? firstNameControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameController;
  String? Function(BuildContext, String?)? lastNameControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    firstNameFocusNode?.dispose();
    firstNameController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();
  }
}
