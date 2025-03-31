import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/data/auth_service.dart';
import 'package:story_app_submission/data/story_service.dart';
import 'package:story_app_submission/providers/auth_provider.dart';
import 'package:story_app_submission/providers/home_provider.dart';
import 'package:story_app_submission/providers/localizations_provider.dart';
import 'package:story_app_submission/providers/story_provider.dart';
import 'package:story_app_submission/routes/route_information_parser.dart';
import 'package:story_app_submission/routes/router_delegate.dart';
import 'package:story_app_submission/common.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => AuthService()),
        Provider(create: (context) => StoryService()),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(context.read<AuthService>()),
        ),
        ChangeNotifierProvider(
          create: (context) => StoryProvider(context.read<StoryService>()),
        ),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
        ChangeNotifierProvider(create: (context) => LocalizationsProvider()),
      ],
      child: const StoryApp(),
    ),
  );
}

class StoryApp extends StatefulWidget {
  const StoryApp({super.key});

  @override
  State<StoryApp> createState() => _StoryAppState();
}

class _StoryAppState extends State<StoryApp> {
  late MyRouterDelegate myRouterDelegate;
  late MyRouteInformationParser routeInformationParser;
  @override
  void initState() {
    super.initState();

    final AuthService authService = AuthService();
    myRouterDelegate = MyRouterDelegate(authService);
    routeInformationParser = MyRouteInformationParser();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LocalizationsProvider>(
      builder: (context, ref, child) {
        final provider = context.watch<LocalizationsProvider>();
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [Locale('id', ''), Locale('en', '')],
          locale: provider.locale,
          routeInformationParser: routeInformationParser,
          routerDelegate: myRouterDelegate,
        );
      },
    );
  }
}
