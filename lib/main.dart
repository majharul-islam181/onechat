import 'package:flutter/material.dart';
import 'package:onechat/common/theme/light_theme.dart';
import 'package:onechat/constand/constants.dart';
import 'package:onechat/views/Notifications/notification_page.dart';
import 'package:onechat/views/ProfilePage/profile_page.dart';
import 'package:onechat/views/IndexPage/chat_page.dart';
import 'package:onechat/views/chatPage/chat_page.dart';
import 'package:onechat/views/contactInfo/contact_info.dart';
import 'package:onechat/views/help/help_screen.dart';
import 'package:onechat/views/home/home_screen.dart';
import 'package:onechat/views/login/login_page.dart';
import 'package:onechat/views/onboarding/welcome_page.dart';
import 'package:onechat/views/selectContact/select_contact_page.dart';
import 'package:onechat/views/settings/setting_page.dart';
import 'package:onechat/views/theme_changer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

/*
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneChat',
      theme: lightTheme(),
      // home: const WelcomePage(),
      // home: const LoginPage(),
      // home: const ProfilePage(),
      // home: const SettingPage(),
      // home: const HelpScreen(),
      // home: const SelectContactPage(),
      // home: const ContactInfo(),
      // home: const NotificationPage(),
      // home: const IndexPage(),
      // home: const ChatPage(),
    );
  }
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
        create: (_) => ThemeChanger(),
        child: Builder(builder: (BuildContext context) {
          final themeChanger = Provider.of<ThemeChanger>(context);
          return MaterialApp(
            title: 'Flutter Demo',
            home: const HomeScreen(),
            themeMode: themeChanger.themeMode,

            /*
            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.teal,
              textTheme: const TextTheme(
                displaySmall: TextStyle(
                    fontFamily: 'Bold', fontSize: 20.0, color: Colors.black),
                headlineMedium: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 18.0,
                    color: Color(0xff25292B)),
                headlineSmall: TextStyle(
                    fontFamily: Bold, fontSize: 16.0, color: Color(0xff25292B)),
                titleLarge: TextStyle(
                    fontFamily: Bold, fontSize: 14.0, color: Color(0xff25292B)),
                bodyLarge: TextStyle(
                    fontFamily: Regular,
                    fontSize: 12.0,
                    color: Color(0xff25292B)),
                bodyMedium: TextStyle(
                    fontFamily: Regular,
                    fontSize: 10.0,
                    color: Color(0xff25292B)),
              ),
              iconTheme: IconThemeData(color: Colors.grey.shade600),
            ),
            darkTheme: ThemeData(
                brightness: Brightness.dark,
                textTheme: const TextTheme(
                  displaySmall: TextStyle(
                      fontFamily: 'Bold', fontSize: 20.0, color: Colors.white),
                  headlineMedium: TextStyle(
                      fontFamily: 'Bold', fontSize: 18.0, color: Colors.white),
                  headlineSmall: TextStyle(
                      fontFamily: Bold, fontSize: 16.0, color: Colors.white),
                  titleLarge: TextStyle(
                      fontFamily: Bold, fontSize: 14.0, color: Colors.white),
                  bodyLarge: TextStyle(
                      fontFamily: Regular, fontSize: 12.0, color: Colors.white),
                  bodyMedium: TextStyle(
                      fontFamily: Regular, fontSize: 10.0, color: Colors.white),
                ),
                iconTheme: const IconThemeData(color: Colors.grey)),
            */

            theme: ThemeData(
              brightness: Brightness.light,
              primarySwatch: Colors.teal,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.teal, // Set the AppBar background color
                foregroundColor: Colors.white, // Set the AppBar text/icon color
                titleTextStyle: TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                iconTheme: IconThemeData(color: Colors.white),
              ),
              textTheme: const TextTheme(
                displaySmall: TextStyle(
                    fontFamily: 'Bold', fontSize: 20.0, color: Colors.black),
                headlineMedium: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 18.0,
                    color: Color(0xff25292B)),
                headlineSmall: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 16.0,
                    color: Color(0xff25292B)),
                titleLarge: TextStyle(
                    fontFamily: 'Bold',
                    fontSize: 14.0,
                    color: Color(0xff25292B)),
                bodyLarge: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 12.0,
                    color: Color(0xff25292B)),
                bodyMedium: TextStyle(
                    fontFamily: 'Regular',
                    fontSize: 10.0,
                    color: Color(0xff25292B)),
              ),
              iconTheme: IconThemeData(color: Colors.grey.shade600),
            ),
            darkTheme: ThemeData(
              brightness: Brightness.dark,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.black, // Dark theme AppBar background
                foregroundColor:
                    Colors.white, // Dark theme AppBar text/icon color
                titleTextStyle: TextStyle(
                  fontFamily: 'Bold',
                  fontSize: 20.0,
                  color: Colors.white,
                ),
                iconTheme: IconThemeData(color: Colors.white),
              ),
              textTheme: const TextTheme(
                displaySmall: TextStyle(
                    fontFamily: 'Bold', fontSize: 20.0, color: Colors.white),
                headlineMedium: TextStyle(
                    fontFamily: 'Bold', fontSize: 18.0, color: Colors.white),
                headlineSmall: TextStyle(
                    fontFamily: 'Bold', fontSize: 16.0, color: Colors.white),
                titleLarge: TextStyle(
                    fontFamily: 'Bold', fontSize: 14.0, color: Colors.white),
                bodyLarge: TextStyle(
                    fontFamily: 'Regular', fontSize: 12.0, color: Colors.white),
                bodyMedium: TextStyle(
                    fontFamily: 'Regular', fontSize: 10.0, color: Colors.white),
              ),
              iconTheme: const IconThemeData(color: Colors.grey),
            ),
            debugShowCheckedModeBanner: false,
          );
        }));
  }
}
