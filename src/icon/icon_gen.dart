import 'config_reader.dart';
import 'icon_font_class_parser.dart';
import 'icon_font_gen_config.dart';

class IconGen{
  const IconGen();

  void gen(){
    final IconFontClassParser parser = IconFontClassParser();
    var configResult = ConfigReader().readIconConfig();
    IconFontGenConfig? config = configResult.$1;
    if (config == null) {
      print(configResult.$2);
      return;
    }
    parser.gen(config);
    print('生成代码成功！${config.distFilePath}');
  }
}