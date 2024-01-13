import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:yaml/yaml.dart';
import 'icon_font_gen_config.dart';

class ConfigReader {
  (IconFontGenConfig?, String) readIconConfig() {
    String projectPath = Directory.current.path;
    File yamlFile = File(path.join(projectPath, 'pubspec.yaml'));
    if (!yamlFile.existsSync()) {
      return (null, 'no pubspec.yaml in current Directory');
    }
    dynamic doc = loadYaml(yamlFile.readAsStringSync());
    dynamic configs = doc?['toly']?['icon'];
    String assetsDist = configs?['assets_dir']??'assets/iconfont';
    String fileDist = configs?['dist_file']??'lib/toly_gen/toly_icon.dart';
    String srcZip = configs?['src_zip']??'assets/download.zip';

    File srcZipFile = File(path.join(projectPath, srcZip));
    if (!srcZipFile.existsSync()) {
      return (null, 'no 【$srcZip】 in current Directory');
    }

    return (
      IconFontGenConfig(
        assetsDist: assetsDist,
        fileDist: fileDist,
        projectPath: projectPath,
        srcZip: srcZip,
      ),
      'ready to generated'
    );
  }
}
