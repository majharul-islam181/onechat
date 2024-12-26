import 'package:flutter/material.dart';
import 'package:onechat/common/theme/light_theme.dart';
import 'package:onechat/views/Notifications/notification_page.dart';
import 'package:onechat/views/ProfilePage/profile_page.dart';
import 'package:onechat/views/IndexPage/chat_page.dart';
import 'package:onechat/views/chatPage/chat_page.dart';
import 'package:onechat/views/contactInfo/contact_info.dart';
import 'package:onechat/views/help/help_screen.dart';
import 'package:onechat/views/login/login_page.dart';
import 'package:onechat/views/onboarding/welcome_page.dart';
import 'package:onechat/views/selectContact/select_contact_page.dart';
import 'package:onechat/views/settings/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneChat',
      theme: lightTheme(),
      home: const WelcomePage(),
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
