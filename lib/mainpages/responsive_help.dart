import 'package:flutter/material.dart';

class ResponsiveWidget extends StatefulWidget {
  final Widget mobile;
  final Widget desktop;

  const ResponsiveWidget(
      {Key? key, required this.mobile, required this.desktop})
      : super(key: key);

  @override
  _ResponsiveWidgetState createState() => _ResponsiveWidgetState();
}

class _ResponsiveWidgetState extends State<ResponsiveWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return widget.mobile;
      } else {
        return widget.desktop;
      }
    });
  }
}
