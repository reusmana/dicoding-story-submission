import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:story_app_submission/class/localization.dart';
import 'package:story_app_submission/common.dart';
import 'package:story_app_submission/providers/localizations_provider.dart';

class LocalizationDropdown extends StatelessWidget {
  const LocalizationDropdown({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        icon: Icon(Icons.language, size: 40, color: Colors.blue),
        items:
            AppLocalizations.supportedLocales.map((Locale locale) {
              final flag = Localization.getFlag(locale.languageCode);
              return DropdownMenuItem(
                value: locale,
                child: Center(
                  child: Text(
                    flag,
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ),
                onTap: () {
                  final provider = Provider.of<LocalizationsProvider>(
                    context,
                    listen: false,
                  );
                  provider.setLocale(locale);
                },
              );
            }).toList(),
        onChanged: (_) {},
      ),
    );
  }
}
