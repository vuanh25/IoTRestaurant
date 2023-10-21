import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bmprogresshud/bmprogresshud.dart';
import 'package:di4l_pos/common/global_configs.dart';
import 'package:di4l_pos/common/helpers.dart';
import 'package:di4l_pos/generated/locales.g.dart';
import 'package:di4l_pos/get_it.dart';
import 'package:di4l_pos/route_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:get/utils.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Firebase
  await Firebase.initializeApp();
  // GetIt
  await configureDependencies();

  /// Web
  if (GetPlatform.isWeb) {
    setPathUrlStrategy();
  }

  // Track error
  FlutterError.onError = (errorDetails) {
    FirebaseCrashlytics.instance.recordFlutterFatalError(errorDetails);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with AfterLayoutMixin {
  /// MARK: - Initials;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    final locale = await Helpers.getCurentLocale();
    Get.updateLocale(locale);
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHud(
      isGlobalHud: true,
      child: GetMaterialApp(
        locale: Get.locale,
        title: GlobalConfigs.kAppName,
        translationsKeys: AppTranslation.translations,
        supportedLocales: GlobalConfigs.supportedLocales,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: (BuildContext context, Widget? child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.0,
            ),
            child: child!,
          );
        },
        fallbackLocale: const Locale('en'),
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generateRoute,
        navigatorKey: Get.key,
        initialRoute: '/',
      ),
    );
  }
}
