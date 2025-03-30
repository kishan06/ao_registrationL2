import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text400_normal_model.dart';
export 'text400_normal_model.dart';

class Text400NormalWidget extends StatefulWidget {
  const Text400NormalWidget({
    super.key,
    required this.text,
    required this.fontSize,
    Color? color,
  }) : this.color = color ?? const Color(0xFF141414);

  final String? text;
  final double? fontSize;
  final Color color;

  @override
  State<Text400NormalWidget> createState() => _Text400NormalWidgetState();
}

class _Text400NormalWidgetState extends State<Text400NormalWidget> {
  late Text400NormalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Text400NormalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      valueOrDefault<String>(
        widget!.text,
        'text',
      ),
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Inter',
            color: widget!.color,
            fontSize: widget!.fontSize,
            letterSpacing: 0.0,
          ),
    );
  }
}
