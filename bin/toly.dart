void main(List<String> arguments) {
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
