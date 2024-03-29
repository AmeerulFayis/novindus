import 'package:flutter/material.dart';
import 'package:novindus/provider/login_provider/login_provider.dart';
import 'package:novindus/ui/screens/login_page/login_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
ChangeNotifierProvider(create: (_)=>LoginProvider()),

      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: LoginPage(),

      ),
    );
  }
}

