import 'package:codecraft_mobile/pages/home.dart';
import 'package:codecraft_mobile/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _lightTheme = true;

  void updateThemeState(bool lightTheme) {
    setState(() {
      _lightTheme = lightTheme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.cyanAccent,
            brightness: _lightTheme ? Brightness.light : Brightness.dark),
        useMaterial3: true,
      ),
      home: TemplatePage(
          lightTheme: _lightTheme, themeCallback: updateThemeState),
    );
  }
}

class TemplatePage extends StatefulWidget {
  const TemplatePage(
      {super.key, required this.lightTheme, required this.themeCallback});

  final bool lightTheme;
  final Function themeCallback;

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  bool _userConnected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(AppLocalizations.of(context)!.applicationName),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.account_box,
              size: 30,
            ),
            onPressed: () {
              _userConnected
                  ? setState(() => _userConnected = false)
                  : setState(() => _userConnected = true);
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.thermostat,
              size: 30,
            ),
            onPressed: () {
              widget.lightTheme
                  ? setState(() => widget.themeCallback(false))
                  : setState(() => widget.themeCallback(true));
            },
          ),
        ],
      ),
      body: _userConnected ? const HomePage() : const LoginPage(),
    );
  }
}
