import 'dart:ui';

import 'package:app/business/auth/firebase_authe.dart';
import 'package:app/business/bloc/authentication_bloc.dart';
import 'package:app/core/constants/language_constants.dart';
import 'package:app/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/app_export.dart';

void main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]).then((value) {
      Logger.init(kReleaseMode ? LogMode.live : LogMode.debug);
      runApp(MyApp());
    });
}

class MyApp extends StatefulWidget {
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state?.setLocale(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Locale _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => FirebaseAuthService(authService: FirebaseAuth.instance),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => LoginBloc(authService: context.read<FirebaseAuthService>()))
        ],
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          supportedLocales: [
            Locale("en", "US"),
            Locale("hi", "IN"),
            Locale("ar", "SA"),
          ],
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale?.languageCode &&
                  supportedLocale.countryCode == locale?.countryCode) {
                return supportedLocale;
              }
            }
            return supportedLocales.first;
          },
          translations: AppLocalization(),
          locale: window.locale, //for setting localization strings
          fallbackLocale: Locale('en', 'US'),
          title: 'Career Path',
          initialBinding: InitialBindings(),
          initialRoute: AppRoutes.landingPageScreen,
          getPages: AppRoutes.pages,
        ),
      ),
    );
  }
}
