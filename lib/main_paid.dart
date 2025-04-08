import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/data/auth_service.dart';
import 'package:story_app_submission/data/story_service.dart';
import 'package:story_app_submission/flavors.dart';
import 'package:story_app_submission/main.dart';
import 'package:story_app_submission/providers/auth_provider.dart';
import 'package:story_app_submission/providers/home_provider.dart';
import 'package:story_app_submission/providers/localizations_provider.dart';
import 'package:story_app_submission/providers/story_provider.dart';

void main() {
  F.appFlavor = Flavor.paid;
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
