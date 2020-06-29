import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String value;
  final double height;
  
  Display({Key key, this.value, this.height}) : super(key : key);
  
  String get _output => value.toString();
  // TODO: responsive sizing refactoring.
  double get _margin => (height / 10);

  // TODO: read LinearGradient docs.
  final LinearGradient _gradient = const LinearGradient(colors: [Colors.black26, Colors.black45]);

  @override
  Widget build(BuildContext context) {
    // TODO: create styles repo file.
    TextStyle displayTextStyle = Theme.of(context).textTheme.headline3
        .copyWith(color: Colors.white, fontWeight: FontWeight.w200);

    return Container(
      padding: EdgeInsets.symmetric(vertical: _margin),
      constraints: BoxConstraints.expand(height: height),
      child: Container(
        // TODO: remove hardcoded padding.
        padding: EdgeInsets.all(32),
        constraints: BoxConstraints.expand(height: height - (_margin)),
        decoration: BoxDecoration(gradient: _gradient),
        child: Text(_output, style: displayTextStyle, textAlign: TextAlign.right,),
      ),
    );
  }
}