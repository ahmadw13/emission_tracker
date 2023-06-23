import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'vehicle_model.dart';
export 'vehicle_model.dart';

class VehicleWidget extends StatefulWidget {
  const VehicleWidget({Key? key}) : super(key: key);

  @override
  _VehicleWidgetState createState() => _VehicleWidgetState();
}

class _VehicleWidgetState extends State<VehicleWidget> {
  late VehicleModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VehicleModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0x2C4B39EF),
        appBar: AppBar(
          backgroundColor: Color(0xFF39C5EF),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -0.76),
                child: Container(
                  width: 341.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.73, -0.13),
                child: Container(
                  width: 124.0,
                  height: 124.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF39EFED), Color(0xFFB939D2)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    icon: FaIcon(
                      FontAwesomeIcons.stop,
                      color: Colors.black,
                      size: 60.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.03, 0.51),
                child: FlutterFlowDropDown<String>(
                  controller: _model.dropDownValueController ??=
                      FormFieldController<String>(null),
                  options: ['i3', 'i4', 'i5', 'v6', 'v8'],
                  onChanged: (val) =>
                      setState(() => _model.dropDownValue = val),
                  width: 300.0,
                  height: 50.0,
                  textStyle: FlutterFlowTheme.of(context).bodyMedium,
                  hintText: 'Please select engine type',
                  icon: Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  fillColor: Color(0x8303090F),
                  elevation: 2.0,
                  borderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 2.0,
                  borderRadius: 8.0,
                  margin: EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                  hidesUnderline: true,
                  isSearchable: false,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.98, 0.17),
                child: GradientText(
                  'Engine size ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 24.0,
                        decoration: TextDecoration.underline,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, -0.94),
                child: GradientText(
                  'Distance Tracker',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                      ),
                  colors: [
                    Color(0xFFA539EF),
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientType: GradientType.radial,
                  radius: 1.0,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.32),
                child: GradientText(
                  'Your carbon emission highly depends on the size of your engine',
                  textAlign: TextAlign.start,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 19.0,
                      ),
                  colors: [
                    FlutterFlowTheme.of(context).primary,
                    FlutterFlowTheme.of(context).secondary
                  ],
                  gradientDirection: GradientDirection.ltr,
                  gradientType: GradientType.linear,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.68, -0.13),
                child: Container(
                  width: 124.0,
                  height: 124.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF39EFED), Color(0xFFB939D2)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.53, -0.18),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30.0,
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: FaIcon(
                    FontAwesomeIcons.play,
                    color: Colors.black,
                    size: 60.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
