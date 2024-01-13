import '../src/icon/icon_gen.dart';
import '../src/res/help_test.dart';

String kVersion = '0.0.3';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print(getHelpText());
    return;
  }

  String cmd = arguments.first;
  if (cmd == '-V' || cmd == '--version') {
    print('toly version: $kVersion');
    return;
  }

  if (cmd == '-H' || cmd == '--help') {
    print(getHelpText());
    return;
  }
  if (cmd == 'icon') {
    const IconGen().gen();
    return;
  }

  int sum = 0;
  String msg = '';
  for (int i = 0; i < arguments.length; i++) {
    int? arg = int.tryParse(arguments[i]);
    if (arg != null) {
      msg += '$arg+';
      sum += arg;
    }
  }
  msg = msg.substring(0, msg.length - 1);
  print('$msg=$sum');
}
