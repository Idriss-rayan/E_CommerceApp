import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/users/authentication/login_screen.dart';
import 'package:untitled/users/fragments/dashboard_of_fragments.dart';
import 'package:untitled/users/userPreferences/user_preferences.dart';

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
        future: RememberUserPrefs.readUserInfo(),
          builder: (context , dataSnapShot)
              {
                if(dataSnapShot.data == null)
                  {
                    return LoginScreen();
                  }
                else
                  {
                    return DashboardOfFragments();
                  }
              },
      ),
    );
  }
}
