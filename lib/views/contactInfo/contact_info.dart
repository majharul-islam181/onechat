import 'package:flutter/material.dart';
import 'package:onechat/common/widgets/custom_text.dart';

import '../../common/utils/app_colors.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Info',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700)),
        backgroundColor: AppColors.greenDark,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain',
                    ),
                  ),
                  SizedBox(height: 15),
                  CustomText(
                    text: 'Majharul',
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(height: 5),
                  CustomText(
                    text: '+91 7650352563',
                    fontSize: 20,
                    color: AppColors.greyDark,
                    fontWeight: FontWeight.w200,
                  ),
                ],
              ),
            ),
          ),

          const Divider(
            thickness: 1,
          ),
          const SizedBox(height: 15),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Media, links and docs',
                  fontSize: 16,
                  color: AppColors.greyDark,
                ),
                Row(
                  children: [
                    CustomText(text: '1'),
                    SizedBox(width: 5),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: Colors.black87,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          //here will image with Radious 10 image will networkimage documents
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSz4yHUJtMP5IKoqhxBZoFH7_O2hSIDbU8HSw&s',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
