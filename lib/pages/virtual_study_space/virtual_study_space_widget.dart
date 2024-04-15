import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'virtual_study_space_model.dart';
export 'virtual_study_space_model.dart';

class VirtualStudySpaceWidget extends StatefulWidget {
  const VirtualStudySpaceWidget({super.key});

  @override
  State<VirtualStudySpaceWidget> createState() =>
      _VirtualStudySpaceWidgetState();
}

class _VirtualStudySpaceWidgetState extends State<VirtualStudySpaceWidget> {
  late VirtualStudySpaceModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VirtualStudySpaceModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: const SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
