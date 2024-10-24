import 'package:flutter/material.dart';

// #docregion LocalizationDelegatesImport
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:gen_l10n_example/l10n/app_localizations.dart';
import 'package:gen_l10n_example/l10n/output/app_localizations.dart';
// #enddocregion LocalizationDelegatesImport

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // #docregion MaterialApp
    return MaterialApp(
      title: 'Localizations Sample App',
      localizationsDelegates: [
        S.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: Locale('en'),
      supportedLocales: [
        Locale('en'), // English
        Locale('es'), // Spanish
      ],
      home: MyHomePage(),
    );
    // #enddocregion MaterialApp
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // #docregion InternationalizedTitle
      appBar: AppBar(
        // The [AppBar] title text sh ould update its message
        // according to the system locale of the target platform.
        // Switching between English and Spanish locales should
        // cause this text to update.
        title: Text(S.of(context)!.helloWorld),
      ),
      // #enddocregion InternationalizedTitle
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(S.of(context)!.helloWorld),
            // Add the following code
            Localizations.override(
              context: context,
              locale: const Locale('en'),
              // Using a Builder here to get the correct BuildContext.
              // Alternatively, you can create a new widget and Localizations.override
              // will pass the updated BuildContext to the new widget.
              child: Builder(
                builder: (context) {
                  // #docregion Placeholder
                  // Examples of internationalized strings.
                  return Column(
                    children: <Widget>[
                      // Returns 'Hello John'
                      Text(S.of(context)!.hello('Developer')),
                      Text(S.of(context)!.helloWorld),
                      Text(S.of(context)!
                          .hello('Software engineering')),
                      // Returns 'no wombats'
                      Text(S.of(context)!.nWombats(0)),
                      // Returns '1 wombat'
                      Text(S.of(context)!.nWombats(1)),
                      // Returns '5 wombats'
                      Text(S.of(context)!.nWombats(5)),
                      // Returns 'he'
                      Text(
                        S.of(context)!.pronoun('male'),
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        S.of(context)!.pronoun('male'),
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        S.of(context)!.pronoun('male'),
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(S.of(context)!.pronoun(Sex.Male.sex),
                          style: TextStyle(color: Colors.red)),
                      Text(S.of(context)!.pronoun(Sex.Male.sex),
                          style: TextStyle(color: Colors.red)),
                      // Returns 'she'
                      Text(S.of(context)!
                          .pronoun(Sex.Female.sex)),
                      // Returns 'they'
                      Text(
                          S.of(context)!.pronoun(Sex.Other.sex)),
                    ],
                  );
                  // #enddocregion Placeholder
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

enum Sex {
  Male('male123'),
  Female('female'),
  Other('other');

  const Sex(this.sex);
  final String sex;
}
