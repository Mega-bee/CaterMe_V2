import 'package:caterme_v2/auth/ui/Screen/signin_screen.dart';
import 'package:caterme_v2/utils/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      // onGenerateTitle: (BuildContext context)=>S.of(context).Popular,
      //
      // localizationsDelegates: [
      //   S.delegate,
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //
      //
      // ],
      // supportedLocales: S.delegate.supportedLocales,
      theme:activeTheme,
      // theme: ThemeData(),
      // darkTheme: ThemeData.dark(),
      // themeMode: _themeMode,
      // 2) ← ← ← use "state" field here //////////////
      home: Homepage(),
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
//   void changeTheme(ThemeMode themeMode) {
//     setState(() {
//       _themeMode = themeMode;
//     });
//   }

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();

  /// ↓↓ ADDED
  /// InheritedWidget style accessor to our State object.
  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}
