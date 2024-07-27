import 'package:breeze_forecast/core/theme/language_manager.dart';
import 'package:breeze_forecast/core/theme/theme_manager.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../generated/l10n.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final languageProvider = Provider.of<LanguageProvider>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          S.of(context).settings,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).Theme,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            ListTile(
              title: Text(
                S.of(context).light_mode,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              leading: Radio<ThemeMode>(
                fillColor: WidgetStateProperty.all(Colors.white),
                value: ThemeMode.light,
                groupValue: themeProvider.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                S.of(context).dark_mode,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              leading: Radio<ThemeMode>(
                fillColor: WidgetStateProperty.all(Colors.white),
                activeColor: Colors.deepPurple,
                value: ThemeMode.dark,
                groupValue: themeProvider.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                S.of(context).system,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              leading: Radio<ThemeMode>(
                activeColor: Colors.deepPurple,
                fillColor: WidgetStateProperty.all(Colors.white),
                value: ThemeMode.system,
                groupValue: themeProvider.themeMode,
                onChanged: (value) {
                  if (value != null) {
                    themeProvider.setThemeMode(value);
                  }
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              S.of(context).language,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            ListTile(
              title: Text(
                S.of(context).english,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              leading: Radio<String>(
                activeColor: Colors.deepPurple,
                fillColor: WidgetStateProperty.all(Colors.white),
                value: 'en',
                groupValue: languageProvider.local,
                onChanged: (value) {
                  if (value != null) {
                    languageProvider.local = value;
                  }
                },
              ),
            ),
            ListTile(
              title: Text(
                S.of(context).arabic,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(color: Colors.white),
              ),
              leading: Radio<String>(
                activeColor: Colors.deepPurple,
                fillColor: WidgetStateProperty.all(Colors.white),
                value: 'ar',
                groupValue: languageProvider.local,
                onChanged: (value) {
                  if (value != null) {
                    languageProvider.local = value;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
