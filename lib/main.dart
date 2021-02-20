import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:parcham_hagh/core/localization/language.dart';
import 'package:parcham_hagh/core/localization/app_localizations_delegate.dart';
import 'package:parcham_hagh/core/router/routes.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:parcham_hagh/core/storage/settings.dart';
import 'core/config/design_config.dart';


void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<Settings>(
        create: (_) => Settings()..init(),
      ),
    ],
    child: Consumer<Settings>(
      builder: (context, settings, __) {
        if (!settings.isInit) {
          return Material(
              child: Image.asset(
                'assets/splash.png',
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ));
        }
        return MaterialApp(
          initialRoute: settings.getInitRoute(),
          //initialRoute: Routes.register,
          onGenerateRoute: Routes.onGenerateRoutes,
          onGenerateTitle: (BuildContext context) => Language.of(context).appName,
          localizationsDelegates: [
            const AppLocalizationsDelegate(),
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            const Locale('en'),
            const Locale('fa'),
            const Locale('ar'),
            const Locale('tr'),
          ],

          locale: settings.locale,
          theme: ThemeData(
            backgroundColor: DesignConfig.backgroundColor,
            splashColor: DesignConfig.backgroundColor,
            primaryColor: DesignConfig.primaryColor,
            accentColor: DesignConfig.backgroundColor,
            //fontFamily: settings.fontFamily,
          ),
        );
      },
    ),
  ));
}
