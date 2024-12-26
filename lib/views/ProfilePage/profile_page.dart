import 'package:flutter/material.dart';
import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/views/ProfilePage/widgets/about_widget.dart';
import 'package:onechat/views/ProfilePage/widgets/get_image_picker.dart';
import 'widgets/phone_details_widget.dart';
import 'widgets/user_name_widget.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          GetImagePicker(),
          SizedBox(
            height: 30,
          ),
          UserNameWidget(),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: AppColors.greyDark,
          ),
          AboutWidget(),
          SizedBox(
            height: 15,
          ),
          Divider(
            color: AppColors.greyDark,
          ),
          PhoneDetailsWidget(),
        ],
      ),
    );
  }
}
