import 'package:flutter/material.dart';
import 'package:onechat/common/widgets/custom_text.dart';
import 'package:onechat/views/settings/widgets/name_with_qr.dart';
import 'package:onechat/views/settings/widgets/reusable_items.dart';
import '../../common/utils/app_colors.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Settings',
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: const Column(
        children: [
          //image with name and qr code
          NameWithQr(),
          Divider(),
          // chat
          ReusableItems(
            icon: Icons.chat,
            title: 'Chats',
            subtitle: 'Theme & wallpapers',
          ),
          // notificataions
          ReusableItems(
            icon: Icons.notification_add,
            title: 'Notifications',
            subtitle: 'Message & group tones',
          ),
          //help
          ReusableItems(
            icon: Icons.question_mark_outlined,
            title: 'Notifications',
            subtitle: 'Message & group tones',
          ),
        ],
      ),
    );
  }
}
