import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/users/authentication/login_screen.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'clothes App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: FutureBuilder(
          builder: (context , dataSnapShot)
              {
                return LoginScreen();
              }, future: null,
      ),
    );
  }
}
