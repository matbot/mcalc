import 'package:flutter/widgets.dart';
import 'package:mcalc/widgets/calculatorkeybutton.dart';

class KeyPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: build layouts for different calculator modes.
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            CalculatorKeyButton(symbol: Keys.clear),
            CalculatorKeyButton(symbol: Keys.sign),
            CalculatorKeyButton(symbol: Keys.percent),
            CalculatorKeyButton(symbol: Keys.divide),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKeyButton(symbol: Keys.seven),
            CalculatorKeyButton(symbol: Keys.eight),
            CalculatorKeyButton(symbol: Keys.nine),
            CalculatorKeyButton(symbol: Keys.multiply),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKeyButton(symbol: Keys.four),
            CalculatorKeyButton(symbol: Keys.five),
            CalculatorKeyButton(symbol: Keys.six),
            CalculatorKeyButton(symbol: Keys.subtract),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKeyButton(symbol: Keys.one),
            CalculatorKeyButton(symbol: Keys.two),
            CalculatorKeyButton(symbol: Keys.three),
            CalculatorKeyButton(symbol: Keys.add),
          ],
        ),
        Row(
          children: <Widget>[
            CalculatorKeyButton(symbol: Keys.zero),
            CalculatorKeyButton(symbol: Keys.decimal),
            CalculatorKeyButton(symbol: Keys.equals),
          ],
        ),
      ],
    );
  }
}