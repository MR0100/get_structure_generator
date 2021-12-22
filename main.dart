import 'dart:io';

String projectName = "";
void main(List<String> args) {
  try {
    if (args.isEmpty) {
      throw "Enter the project name.\nEx. dart main.dart [project_name]";
    } else {
      projectName = args.first;
      startThePackageGeneration();
    }
  } catch (e) {
    print(e);
  }
}

startThePackageGeneration() {
  String currentDirectory = Directory.current.path;

  createMainFile(currentDirectory);
  createBindings(currentDirectory);
  createSRC(currentDirectory);
  createUtilities(currentDirectory);
}

createUtilities(String currentDirectory) {
  Directory(currentDirectory + "/utilities").createSync();
  if (!Directory(currentDirectory + "/utilities").existsSync()) {
    throw "UTILITIES DIRECTORY NOT EXISTS!";
  } else {
    createUtilitiesFile(currentDirectory);
    createFonts(currentDirectory);
    createLocalization(currentDirectory);
    createRoutes(currentDirectory);
    createSettings(currentDirectory);
    createTheme(currentDirectory);
  }
}

createFonts(String currentDirectory) {
  Directory(currentDirectory + "/utilities/fonts").createSync();
  if (!Directory(currentDirectory + "/utilities/fonts").existsSync()) {
    throw "UTILITIES/FONTS DIRECTORY NOT EXISTS!";
  } else {
    File fontFile =
        File(currentDirectory + "/utilities/fonts" + "/font_utilities.dart");
    fontFile.createSync();

    if (!fontFile.existsSync()) {
      throw "FONT FILE NOT EXISTS!";
    } else {
      writeDataInFontUtilitiesFile(fontFile);
    }
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInFontUtilitiesFile(File fileName) {
  String fontUtilitiesFileContent = """import 'package:flutter/material.dart';

/// FontUtilities is main base class for all the styles of fonts used in the whole application.
/// you can directly change the font styles in this file.
/// so, all the fonts used in application will be changed.
/// there we provided some of the most used fontsizes.
/// you can add new fontsize if you don't find in this file.
class FontUtilities {
  /// FONTSTYLE FOR FONT SIZE 8
  static TextStyle h8({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 8,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 9
  static TextStyle h9({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 9,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 10
  static TextStyle h10({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 10,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 11
  static TextStyle h11({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 11,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 12
  static TextStyle h12({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 12,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 14
  static TextStyle h14({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 14,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 16
  static TextStyle h16({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 16,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 18
  static TextStyle h18({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 18,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 20
  static TextStyle h20({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 20,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 22
  static TextStyle h22({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 22,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 24
  static TextStyle h24({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 24,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 26
  static TextStyle h26({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 26,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 28
  static TextStyle h28({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 28,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 30
  static TextStyle h30({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 30,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 32
  static TextStyle h32({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 32,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 35
  static TextStyle h35({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 35,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 40
  static TextStyle h40({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 40,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 45
  static TextStyle h45({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 45,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 50
  static TextStyle h50({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 50,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 55
  static TextStyle h55({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 55,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 60
  static TextStyle h60({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 60,
    );
  }

  /// FONTSTYLE FOR FONT SIZE 72
  static TextStyle h72({
    required Color? fontColor,
    FWT fontWeight = FWT.regular,
  }) {
    return TextStyle(
      color: fontColor,
      fontWeight: getFontWeight(fontWeight),
      fontSize: 72,
    );
  }

  /// TODO : IN CASE YOU DIDN'T FIND THE FONT YOU NEED IN YOUR APPLICATION, PLEASE ADD FONT AS BELOW.
  /// UNCOMMENT THE BELOW CODE AND THEN COPY THE CODE.
  /// AND JUST CHANGE FONT SIZE.
  ///
  /// FONTSTYLE FOR FONT SIZE [72 : 72 is the font size]
  /// static TextStyle [h72 : h72 is the name of the font for this particular size.]({
  ///   required Color? fontColor,
  ///   FWT fontWeight = FWT.regular,
  /// }) {
  ///   return TextStyle(
  ///     color: fontColor,
  ///     fontWeight: getFontWeight(fontWeight),
  ///     fontSize: [72 : 72 is the font size.],
  ///   );
  /// }

}

/// these are the most commonly used font weight for every mobile application and websites.
enum FWT {
  bold, //700
  semiBold, // 600
  medium, // 500
  regular, //400
  light, // 200
}

/// THIS FUNCTION IS USED TO SET FONT WEIGHT ACCORDING TO SELECTED ENUM...
FontWeight getFontWeight(FWT fwt) {
  switch (fwt) {
    case FWT.light:
      return FontWeight.w200;
    case FWT.regular:
      return FontWeight.w400;
    case FWT.medium:
      return FontWeight.w500;
    case FWT.semiBold:
      return FontWeight.w600;
    case FWT.bold:
      return FontWeight.w700;
  }
}
""";
  try {
    fontUtilitiesFileContent =
        fontUtilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(fontUtilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE FONT UTILITIES.DART FILE...";
  }
}

createLocalization(String currentDirectory) {
  Directory(currentDirectory + "/utilities/localization").createSync();
  if (!Directory(currentDirectory + "/utilities/localization").existsSync()) {
    throw "UTILITIES/LOCALIZATION DIRECTORY NOT EXISTS!";
  } else {
    createLocalizationFile(currentDirectory);
    Directory(currentDirectory + "/utilities/localization/locale").createSync();
    if (!Directory(currentDirectory + "/utilities/localization/locale")
        .existsSync()) {
      throw "UTILITIES/LOCALIZATION/LOCALE DIRECTORY NOT EXISTS!";
    } else {
      createLocalizationLocaleENUSFile(currentDirectory);
      createLocalizationLocaleFile(currentDirectory);
    }
  }
}

/// PROGRESS TO CREATE MAIN.DART FILE...
createLocalizationLocaleENUSFile(String currentDirectory) {
  File localizationFile =
      File(currentDirectory + "/utilities/localization/locale" + "/en_us.dart");
  localizationFile.createSync();

  if (!localizationFile.existsSync()) {
    throw "EN_US.DART FILE NOT EXISTS!";
  } else {
    writeDataInLocalizationLocaleENUSFile(localizationFile);
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInLocalizationLocaleENUSFile(File fileName) {
  String localizationFileContent = """part of application_locale;

/// ALL THE LANGUAGE STRINGS WILL BE DEFINED IN THIS MAP.
/// Ex .
/// "loginScreenTitle" : "Login"
///
/// here, the "loginScreenTitle" is the String which you have to use for the localization.
/// TODO : ADD ALL THE LOCALIZATION STRINGS IN THIS MAP.
Map<String, String> enUS = {
  "applicationName": "mvc_get",
};
""";
  localizationFileContent =
      localizationFileContent.replaceAll("mvc_get", projectName);
  try {
    fileName.writeAsStringSync(localizationFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE EN_US.DART FILE...";
  }
}

/// PROGRESS TO CREATE MAIN.DART FILE...
createLocalizationLocaleFile(String currentDirectory) {
  File localizationFile = File(
      currentDirectory + "/utilities/localization/locale" + "/locale.dart");
  localizationFile.createSync();

  if (!localizationFile.existsSync()) {
    throw "LOCALE.DART FILE NOT EXISTS!";
  } else {
    writeDataInLocalizationLocaleFile(localizationFile);
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInLocalizationLocaleFile(File fileName) {
  String localizationFileContent = """library application_locale;

part 'en_us.dart';
""";
  localizationFileContent =
      localizationFileContent.replaceAll("mvc_get", projectName);
  try {
    fileName.writeAsStringSync(localizationFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE LOCALE.DART FILE...";
  }
}

/// PROGRESS TO CREATE MAIN.DART FILE...
createLocalizationFile(String currentDirectory) {
  File localizationFile =
      File(currentDirectory + "/utilities/localization" + "/localization.dart");

  localizationFile.createSync();

  if (!localizationFile.existsSync()) {
    throw "LOCALIZATION.DART FILE NOT EXISTS!";
  } else {
    writeDataInLocalizationFile(localizationFile);
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInLocalizationFile(File fileName) {
  String localizationFileContent = """export 'locale/locale.dart';""";
  localizationFileContent =
      localizationFileContent.replaceAll("mvc_get", projectName);
  try {
    fileName.writeAsStringSync(localizationFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE LOCALIZATION.DART FILE...";
  }
}

createRoutes(String currentDirectory) {
  Directory(currentDirectory + "/utilities/routes").createSync();
  if (!Directory(currentDirectory + "/utilities/routes").existsSync()) {
    throw "UTILITIES/ROUTES DIRECTORY NOT EXISTS!";
  } else {
    File routeFile =
        File(currentDirectory + "/utilities/routes/" + "/route_utilities.dart");
    routeFile.createSync();

    if (!routeFile.existsSync()) {
      throw "ROUTE FILE NOT EXISTS!";
    } else {
      writeDataInRouteFile(routeFile);
    }
  }
}

writeDataInRouteFile(File fileName) {
  String utilitiesFileContent = """import 'package:get/get.dart';
import 'package:mvc_get/src/mvc/splash/splash_screen.dart';

/// All the routes and pages used in the application are used in this class.
class RouteUtilities {
  /// Define all the routes used in the application.
  /// routes are basically, all the screens and pages for the navigation.
  /// we are providing default two routes.
  /// one is for the root and another one is for splashScreen.
  static String root = "/";
  static String splashScreen = "/splashScreen";

  /// TODO : MENTION ALL THE PAGES IN THIS FILE FOR THE NAVIGATION.
  ///
  /// Ex. static String pageName = "/pageName";

  static List<GetPage> pages = [
    GetPage(name: root, page: () => const SplashScreen()),
    GetPage(name: splashScreen, page: () => const SplashScreen()),
  ];
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE ROUTE.DART FILE...";
  }
}

createSettings(String currentDirectory) {
  Directory(currentDirectory + "/utilities/settings").createSync();
  if (!Directory(currentDirectory + "/utilities/settings").existsSync()) {
    throw "UTILITIES/SETTINGS DIRECTORY NOT EXISTS!";
  } else {
    File preferenceFile = File(
        currentDirectory + "/utilities/settings/" + "/prederence_key.dart");
    preferenceFile.createSync();

    if (!preferenceFile.existsSync()) {
      throw "PREFERENCE FILE NOT EXISTS!";
    } else {
      writeDataInPreferenceFile(preferenceFile);
    }
    File variableFile = File(
        currentDirectory + "/utilities/settings/" + "/variable_utilities.dart");
    variableFile.createSync();

    if (!variableFile.existsSync()) {
      throw "VARIABLE UTILITIES FILE NOT EXISTS!";
    } else {
      writeDataInVariableUtilitiesFile(variableFile);
    }
  }
}

writeDataInPreferenceFile(File fileName) {
  String utilitiesFileContent =
      """/// all the keys for read/write preferences are mentioned in this file.
class PreferenceKey {
  static String applicationStorageKey = "mvc_getStorageKey";
  static String isLogin = "is_mvc_getLogin";
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE PREFERENCE KEY.DART FILE...";
  }
}

writeDataInVariableUtilitiesFile(File fileName) {
  String utilitiesFileContent = """import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mvc_get/utilities/utilities.dart';

/// All the global variables used in the application are defined in this file.
class VariableUtilities {
  static late Size screenSize;

  /// This is the instance of the GetStorage.
  /// GetStorage is used for the setting preferences and local data in the device.
  static late GetStorage prefs;

  /// This is the instance of the ThemeHandler.
  /// This object / instance is used to access all colors defined in the theme for application.
  static late ThemeHandler theme;
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE VARIABLE UTILITIES.DART FILE...";
  }
}

createTheme(String currentDirectory) {
  Directory(currentDirectory + "/utilities/theme").createSync();
  if (!Directory(currentDirectory + "/utilities/theme").existsSync()) {
    throw "UTILITIES/THEME DIRECTORY NOT EXISTS!";
  } else {
    File themeFile =
        File(currentDirectory + "/utilities/theme" + "/theme.dart");
    themeFile.createSync();

    if (!themeFile.existsSync()) {
      throw "THEME FILE NOT EXISTS!";
    } else {
      writeDataInThemeFile(themeFile);
    }
    File themeHandlerFile =
        File(currentDirectory + "/utilities/theme" + "/theme_handler.dart");
    themeHandlerFile.createSync();

    if (!themeHandlerFile.existsSync()) {
      throw "THEME FILE NOT EXISTS!";
    } else {
      writeDataInThemeHandlerFile(themeHandlerFile);
    }
    createThemeData(currentDirectory);
  }
}

createThemeData(String currentDirectory) {
  Directory(currentDirectory + "/utilities/theme/theme_data").createSync();
  if (!Directory(currentDirectory + "/utilities/theme/theme_data")
      .existsSync()) {
    throw "UTILITIES/THEME/THEME_DATA DIRECTORY NOT EXISTS!";
  } else {
    File themeFile = File(currentDirectory +
        "/utilities/theme/theme_data" +
        "/dark_theme_data.dart");
    themeFile.createSync();

    if (!themeFile.existsSync()) {
      throw "THEME FILE NOT EXISTS!";
    } else {
      writeDataInDarkThemeFile(themeFile);
    }
    File themeHandlerFile = File(currentDirectory +
        "/utilities/theme/theme_data" +
        "/light_theme_data.dart");
    themeHandlerFile.createSync();

    if (!themeHandlerFile.existsSync()) {
      throw "THEME FILE NOT EXISTS!";
    } else {
      writeDataInLightThemeFile(themeHandlerFile);
    }
  }
}

writeDataInLightThemeFile(File fileName) {
  String utilitiesFileContent = """part of application_theme;

/// This is the class of the colors.
/// All the colors you are going to use for the light mode will be in this file.
/// TODO: WHEN YOU ADD NEW COLOR PROPERTY IN THE THEMEHANDLER CLASS THEN YOU MUST HAVE TO SPECIFY COLOR FOR THAT IN THIS FILE.

class LightThemeData extends ThemeHandler {
  LightThemeData()
      : super(
          whiteColor: const Color(0xFFFFFFFF),
          blackColor: const Color(0xFF121212),
          transparent: const Color(0x00000000),
        );
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE LIGHT THEME.DART FILE...";
  }
}

writeDataInDarkThemeFile(File fileName) {
  String utilitiesFileContent = """part of application_theme;

/// This is the class of the colors.
/// All the colors you are going to use for the dark mode will be in this file.
/// TODO: WHEN YOU ADD NEW COLOR PROPERTY IN THE THEMEHANDLER CLASS THEN YOU MUST HAVE TO SPECIFY COLOR FOR THAT IN THIS FILE.

class DarkThemeData extends ThemeHandler {
  DarkThemeData()
      : super(
          whiteColor: const Color(0xFFFFFFFF),
          blackColor: const Color(0xFF121212),
          transparent: const Color(0x00000000),
        );
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE DARK THEME.DART FILE...";
  }
}

writeDataInThemeFile(File fileName) {
  String utilitiesFileContent = """
  library application_theme;

import 'package:flutter/material.dart';

part 'theme_data/dark_theme_data.dart';
part 'theme_data/light_theme_data.dart';
part 'theme_handler.dart';




/// TODO: IF YOU ADD NEW THEME_DATA THEN PLEASE ADD THAT FILE AS A PART OF THIS LIBRARY.
/// 
/// here, 'part' is the keyword to mention that the specified file is the part of current library.
/// so, you have to do is. 
/// part 'path/filename.dart';
/// 
/// ex. 
/// part 'theme_data/demo_theme.dart';""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE THEME.DART FILE...";
  }
}

writeDataInThemeHandlerFile(File fileName) {
  String utilitiesFileContent = """
  part of application_theme;

/// this is the main theme handler class of the application.
/// all the colors you want to use in the application will be in this file.
/// we are providing some of the colors by default.
/// in case you want to add new color please add the variable inside class and make required in the constructor.

/// NOTE: PLEASE NOTE THAT THE VARIABLE MUST BE REQUIRED IN CONSTRUCTOR.
abstract class ThemeHandler {
  final Color transparent;
  final Color whiteColor;
  final Color blackColor;

  ThemeHandler({
    required this.transparent,
    required this.whiteColor,
    required this.blackColor,
  });
}
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE THEME_HANDLER.DART FILE...";
  }
}

/// PROGRESS TO CREATE MAIN.DART FILE...
createUtilitiesFile(String currentDirectory) {
  File utilitiesFile = File(currentDirectory + "/utilities/utilities.dart");
  utilitiesFile.createSync();

  if (!utilitiesFile.existsSync()) {
    throw "UTILITIES.DART FILE NOT EXISTS!";
  } else {
    writeDataInUtilitiesFile(utilitiesFile);
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInUtilitiesFile(File fileName) {
  String utilitiesFileContent = """export 'fonts/font_utilities.dart';
export 'localization/localization.dart';
export 'routes/route_utilities.dart';
export 'settings/preference_key.dart';
export 'settings/variable_utilities.dart';
export 'theme/theme.dart';
""";
  try {
    utilitiesFileContent =
        utilitiesFileContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(utilitiesFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE UTILITIES.DART FILE...";
  }
}

/// PROGRESS TO CREATE THE SOURCE FOLDER AND THE FILES...
createSRC(String currentDirectory) {
  Directory(currentDirectory + "/src").createSync();
  if (!Directory(currentDirectory + "/src").existsSync()) {
    throw "SRC DIRECTORY NOT EXISTS!";
  } else {
    createMVC(currentDirectory);
    createWidgets(currentDirectory);
  }
}

createMVC(String currentDirectory) {
  Directory(currentDirectory + "/src/mvc").createSync();
  if (!Directory(currentDirectory + "/src/mvc").existsSync()) {
    throw "SRC/MVC DIRECTORY NOT EXISTS!";
  } else {
    Directory(currentDirectory + "/src/mvc/splash").createSync();
    if (!Directory(currentDirectory + "/src/mvc/splash").existsSync()) {
      throw "SRC/MVC/splash DIRECTORY NOT EXISTS!";
    } else {
      File splashFile =
          File(currentDirectory + "/src/mvc/splash" + "/splash_screen.dart");
      splashFile.createSync();

      if (!splashFile.existsSync()) {
        throw "SPLASH FILE NOT EXISTS!";
      } else {
        writeDataInSplashScreen(splashFile);
      }
    }
  }
}

writeDataInSplashScreen(File fileName) {
  String splashScreeContent = """import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_get/utilities/routes/route_utilities.dart';
import 'package:mvc_get/utilities/settings/preference_key.dart';
import 'package:mvc_get/utilities/settings/variable_utilities.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late Timer timer;
  @override
  void initState() {
    super.initState();
  }

  /// Start Timer...
  startTimer() {
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      timer.cancel();
      bool isLogin =
          VariableUtilities.prefs.read<bool>(PreferenceKey.isLogin) ?? false;
      if (isLogin) {
        /// TODO: YOU HAVE TO CHANGE THE NAME OF HOME SCREEN...
        /// if user is logged in then redirect to the homescreen.
        String homeScreen = RouteUtilities.root;
        Get.toNamed(homeScreen);
      } else {
        /// TODO: YOU HAVE TO CHANGE THE NAME OF LOGIN SCREEN...
        /// if user is not logged in then redirect to the loginscreen.
        String loginScreen = RouteUtilities.root;
        Get.toNamed(loginScreen);
      }
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    /// assign the value of screensize depending on the device to use in the application.
    VariableUtilities.screenSize = MediaQuery.of(context).size;
    return const Scaffold(
      body: Center(),
    );
  }
}
""";
  try {
    splashScreeContent = splashScreeContent.replaceAll("mvc_get", projectName);
    fileName.writeAsStringSync(splashScreeContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITTING DATA IN THE SPLASH SCREEN FILE...";
  }
}

createWidgets(String currentDirectory) {
  Directory(currentDirectory + "/src/widgets").createSync();
  if (!Directory(currentDirectory + "/src/widgets").existsSync()) {
    throw "SRC/WIDGETS DIRECTORY NOT EXISTS!";
  } else {
    File widgetsFile =
        File(currentDirectory + "/src/widgets" + "/widgets.dart");
    widgetsFile.createSync();

    if (!widgetsFile.existsSync()) {
      throw "WIDGETS FILE NOT EXISTS!";
    } else {
      /// TODO : CALL THE FUNCTION TO WRITE DATA IN THE WIDGETS FILE...
    }
  }
}

/// PROCESS TO CREATE THE BINDINGS FOLDER AND THE FILES...
createBindings(String currentDirectory) {
  /// Create Bindings..
  Directory(currentDirectory + "/bindings").createSync();
  if (!Directory(currentDirectory + "/bindings").existsSync()) {
    throw "BINDINGS DIRECTORY NOT EXISTS!";
  } else {
    File bindingsFile = File(currentDirectory + "/bindings" + "/bindings.dart");
    bindingsFile.createSync();

    if (!bindingsFile.existsSync()) {
      throw "BINDINGS FILE NOT EXISTS!";
    } else {
      writeDataInBindingsFile(bindingsFile);
    }
  }
}

/// WRITE DATA IN THE BINDINGS FILE...
writeDataInBindingsFile(File fileName) {
  try {
    fileName
        .writeAsStringSync("/// ALL THE CONTROLLERS WILL BE PUT IN THIS FILE.");
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE BINDINGS.DART FILE...";
  }
}

/// PROGRESS TO CREATE MAIN.DART FILE...
createMainFile(String currentDirectory) {
  File mainFile = File(currentDirectory + "/main.dart");
  mainFile.createSync();

  if (!mainFile.existsSync()) {
    throw "MAIN.DART FILE NOT EXISTS!";
  } else {
    writeDataInMainFile(mainFile);
  }
}

/// WRITE DATA IN THE MAIN.DART FILE...
writeDataInMainFile(File fileName) {
  String mainFileContent = """import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mvc_get/utilities/settings/preference_key.dart';
import 'package:mvc_get/utilities/settings/variable_utilities.dart';

void main() {
  /// Initializing the instance of applicationStorageKey.
  GetStorage.init(PreferenceKey.applicationStorageKey);

  /// Assigning the instance of Getstorage to the varialbe to use in the application.
  VariableUtilities.prefs = GetStorage(PreferenceKey.applicationStorageKey);
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp();
  }
}
""";
  mainFileContent = mainFileContent.replaceAll("mvc_get", projectName);
  try {
    fileName.writeAsStringSync(mainFileContent);
  } catch (e) {
    throw "ERROR CAUSED WHILE WRITING DATA IN THE MAIN.DART FILE...";
  }
}
