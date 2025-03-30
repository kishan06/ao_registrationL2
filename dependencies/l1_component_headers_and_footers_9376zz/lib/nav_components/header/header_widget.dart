import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'header_model.dart';
export 'header_model.dart';

class HeaderWidget extends StatefulWidget {
  const HeaderWidget({
    super.key,
    bool? isRegistrationPage,
    required this.keyPrefix,
    this.onTapScreenReader,
    this.onTapFontIncrease,
    this.onTapFontDecrease,
    this.onTapTonality,
    this.onLanguageDropdownSelection,
  }) : this.isRegistrationPage = isRegistrationPage ?? false;

  final bool isRegistrationPage;
  final String? keyPrefix;
  final Future Function()? onTapScreenReader;
  final Future Function()? onTapFontIncrease;
  final Future Function()? onTapFontDecrease;
  final Future Function()? onTapTonality;
  final Future Function()? onLanguageDropdownSelection;

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  late HeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'dependencies/l1_component_headers_and_footers_9376zz/assets/images/Logo_of_Income_Tax_Department_India.png',
                  width: 80.0,
                  height: 120.0,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(
                height: 100.0,
                child: VerticalDivider(
                  thickness: 2.0,
                  indent: 8.0,
                  endIndent: 8.0,
                  color: FlutterFlowTheme.of(context).alternate,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'dependencies/l1_component_headers_and_footers_9376zz/assets/images/tds-logo.png',
                  width: 669.7,
                  height: 120.0,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ],
          ),
          Builder(
            builder: (context) {
              if (!widget!.isRegistrationPage) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.speaker_phone_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 32.0,
                    ),
                    Text(
                      'Screen Reader',
                      style: FlutterFlowTheme.of(context).titleLarge.override(
                            fontFamily: 'Inter Tight',
                            color: FlutterFlowTheme.of(context).primary,
                            letterSpacing: 0.0,
                          ),
                    ),
                    SizedBox(
                      height: 32.0,
                      child: VerticalDivider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Icon(
                      Icons.text_increase_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.font_download_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                    Icon(
                      Icons.text_decrease_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    SizedBox(
                      height: 32.0,
                      child: VerticalDivider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Icon(
                      Icons.dark_mode_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    SizedBox(
                      height: 32.0,
                      child: VerticalDivider(
                        thickness: 2.0,
                        color: FlutterFlowTheme.of(context).alternate,
                      ),
                    ),
                    Icon(
                      Icons.language_outlined,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'English',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              fontFamily: 'Inter Tight',
                              color: FlutterFlowTheme.of(context).primary,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                  ],
                );
              } else {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'dependencies/l1_component_headers_and_footers_9376zz/assets/images/infosys-logo-infosys-icon-free-free-vector.jpg',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
