import 'package:flutter/material.dart';
import 'package:teste/app/pages/pomodoro.dart';
import 'package:provider/provider.dart';
import 'package:teste/app/store/pomodoro_store.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PomodoroStore>(create: (_) => PomodoroStore(),),
      ],
      child: MaterialApp(
        title: 'MobX Tutorial',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          //primaryColor: Colors.deepPurpleAccent,
          //cursorColor: Colors.deepPurpleAccent,
          //scaffoldBackgroundColor: Colors.deepPurpleAccent
        ),
        home: const Pomodoro(),
      ),
    );
  }
}