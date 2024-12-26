import 'package:flutter/material.dart';
import 'package:onechat/common/widgets/custom_text.dart';
import 'package:onechat/views/help/widgets/helpItemsWidget.dart';

import '../../common/utils/app_colors.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          text: 'Help',
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: const Column(
        children: [
          helpItemsWidget(
            icon: Icons.contact_support_rounded,
            title: 'Help Center',
          ),
          helpItemsWidget(
            icon: Icons.person_pin_rounded,
            title: 'Contact Us',
            title2: 'Questions? Need help?',
          ),
          helpItemsWidget(
            icon: Icons.description_outlined,
            title: 'Terms and Privacy Policy',
          ),
          helpItemsWidget(
            icon: Icons.info_outline_rounded,
            title: 'App info',
          ),
        ],
      ),
    );
  }
}
