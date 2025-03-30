import '/flutter_flow/flutter_flow_util.dart';
import 'package:ff_theme/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'text300light_model.dart';
export 'text300light_model.dart';

class Text300lightWidget extends StatefulWidget {
  const Text300lightWidget({
    super.key,
    required this.text,
    double? fontSize,
    Color? color,
  })  : this.fontSize = fontSize ?? 14.0,
        this.color = color ?? const Color(0xFFFFFBFB);

  final String? text;
  final double fontSize;
  final Color color;

  @override
  State<Text300lightWidget> createState() => _Text300lightWidgetState();
}

class _Text300lightWidgetState extends State<Text300lightWidget> {
  late Text300lightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Text300lightModel());
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
            fontWeight: FontWeight.w300,
          ),
    );
  }
}
