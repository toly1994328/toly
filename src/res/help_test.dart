

String getHelpText(){
  return """
A command-line tool powered by toly.
open source in https://github.com/toly1994328/toly
Usage: toly <command> [arguments]

Global options:
-V, --version               Print the toly version.
-H, --help                  Print this usage information.

Icon Builder Tool: use in Flutter Project
add config in pubspec.yaml:

toly:
  icon:
    src_zip: #iconfont zip file path (default: assets/download.zip)
    assets_dir: #where iconfont res save to (default: assets/iconfont)
    dist_file: #where icon class file save to (default: lib/toly_gen/toly_icon.dart)
  """;
}