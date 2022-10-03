import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Auth/signin_screen.dart';
import 'Hive/Hive.dart';
import 'Theme/Themes.dart';
import 'localisation/localisation_service.dart';
Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await HiveSetUp.init();
  runApp( MyApp());
}

class _MyAppState extends State<MyApp> {
  late AppThemeDataService _appThemeDataService;
  late LocalizationService _localizationService ;
  late String lang ;
  late ThemeData activeTheme;
  /// 1) our themeMode "state" field
  // ThemeMode _themeMode = ThemeMode.system;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // themeMode:ThemeData(textTheme: TextTheme()) ,TextTheme
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: Locale.fromSubtags(
        languageCode:lang,
      ),
      theme:ThemeData( textTheme: GoogleFonts.poppinsTextTheme(
        Theme.of(context).textTheme,
      ),),
      home: SigninScreen(),
    );
  }
  @override
  void initState() {
    super.initState();
    _localizationService =LocalizationService();
    _appThemeDataService =AppThemeDataService();
    lang = _localizationService.getLanguage();
    activeTheme =_appThemeDataService.getActiveTheme();
    _localizationService.localizationStream.listen((event) {
      lang = event;
      setState(() {

      });
    });


    _appThemeDataService.darkModeStream.listen((event) {
      activeTheme =event;
      setState(() {

      });



    });
  }
}

  /// 3) Call this to change theme from any context using "of" accessor
  /// e.g.:
  /// MyApp.of(context).changeTheme(ThemeMode.dark);

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  /// ↓↓ ADDED
  /// InheritedWidget style accessor to our State object.
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}
