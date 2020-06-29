// TODO: fix circular dependency
import 'package:mcalc/widgets/calculatorkeybutton.dart';

enum KeyType { FUNCTION, OPERATOR, INTEGER }

class KeySymbol {
  final String value;
  const KeySymbol(this.value);

  static List<KeySymbol> _functions = [Keys.clear, Keys.sign, Keys.decimal];
  static List<KeySymbol> _operators = [Keys.divide, Keys.multiply, Keys.subtract, Keys.add, Keys.equals];

  @override
  String toString() => value;

  // TODO: improve logic
  bool get isOperator => _operators.contains(this);
  bool get isFunction => _functions.contains(this);
  bool get isInteger => !isOperator && !isFunction;
  KeyType get type => isFunction ? KeyType.FUNCTION
                    : (isOperator ? KeyType.OPERATOR
                    : KeyType.INTEGER);
}