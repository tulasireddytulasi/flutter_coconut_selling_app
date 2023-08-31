import 'package:coconut/providers/universal_provider.dart';
import 'package:coconut/screens/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UniversalProvider()),
      ],
      child: MaterialApp(
        title: 'Coconut App',
        debugShowCheckedModeBanner: false,
        // supportedLocales: const [
        //   Locale('te', 'IN'),
        //   Locale('en', 'IN'),
        //   Locale('hi', 'IN'),
        //   Locale('ml', 'IN'),
        //   Locale('mr', 'IN')
        // ],
        // localizationsDelegates: [
        //   GlobalMaterialLocalizations.delegate,
        //   GlobalWidgetsLocalizations.delegate,
        //   GlobalCupertinoLocalizations.delegate,
        // ],
        // locale: const Locale('te', 'IN'),
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          useMaterial3: false,
        ),
        home: const BottomNavbar(),
        routes: {
          BottomNavbar.routeName: (_) => const BottomNavbar(),
        },
        // onGenerateRoute: generateRoute,
      ),
    );
  }
}
