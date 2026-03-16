import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login_page.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://uytcvugiaulbllymcqre.supabase.co',
    anonKey: 'sb_publishable_XnQ-ednPN4bTX2hhfR0L4g_OHVJFbAW',
  );

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  static void toggleTheme(BuildContext context) {

    final state = context.findAncestorStateOfType<_MyAppState>();
    state?.toggleTheme();
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  bool darkMode = false;

  void toggleTheme() {

    setState(() {
      darkMode = !darkMode;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(),

      darkTheme: ThemeData.dark(),

      themeMode: darkMode ? ThemeMode.dark : ThemeMode.light,

      home: const LoginPage(),
    );
  }
}