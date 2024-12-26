import 'package:flutter/material.dart';
import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/common/widgets/custom_text.dart';
import 'package:onechat/views/Notifications/widgets/group_notification.dart';
import 'package:onechat/views/Notifications/widgets/message_notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Conversations tone',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    CustomText(
                      text: 'Play sounds for incoming and outgoing messages.',
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          Divider(
            color: AppColors.greyDark,
            thickness: 0.5,
          ),
          SizedBox(height: 15),
          MessageNotifications(),
          SizedBox(height: 15),
          Divider(
            color: AppColors.greyDark,
            thickness: 0.5,
          ),
          SizedBox(height: 15),
          GroupNotification(),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
