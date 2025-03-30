import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text600_semibold_model.dart';
export 'text600_semibold_model.dart';

class Text600SemiboldWidget extends StatefulWidget {
  const Text600SemiboldWidget({
    super.key,
    required this.text,
    double? fontSize,
    Color? color,
  })  : this.fontSize = fontSize ?? 14.0,
        this.color = color ?? Colors.black;

  final String? text;
  final double fontSize;
  final Color color;

  @override
  State<Text600SemiboldWidget> createState() => _Text600SemiboldWidgetState();
}

class _Text600SemiboldWidgetState extends State<Text600SemiboldWidget> {
  late Text600SemiboldModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Text600SemiboldModel());
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
            fontWeight: FontWeight.w600,
          ),
    );
  }
}
