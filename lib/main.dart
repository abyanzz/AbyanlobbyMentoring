import 'package:flutter/material.dart';
import 'mentor_list_page.dart';

void main() {
  runApp(const AbyanLobbyMentoringApp());
}

class AbyanLobbyMentoringApp extends StatelessWidget {
  const AbyanLobbyMentoringApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'abyanlobbymentoring',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        colorScheme: const ColorScheme.dark(
          primary: Colors.blue,
          secondary: Colors.blueAccent,
        ),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'Oxygen'),
          bodyLarge: TextStyle(fontFamily: 'Oxygen'),
          bodySmall: TextStyle(fontFamily: 'Oxygen'),
          titleLarge: TextStyle(fontFamily: 'Staatliches'),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF121212),
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontFamily: 'Staatliches',
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      home: const MentorListPage(),
    );
  }
}
