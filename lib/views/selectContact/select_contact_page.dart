import 'package:flutter/material.dart';
import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/common/widgets/custom_text.dart';
import 'package:onechat/views/selectContact/widget/new_contact_widget.dart';
import 'package:onechat/views/selectContact/widget/new_group_widget.dart';

class SelectContactPage extends StatefulWidget {
  const SelectContactPage({super.key});

  @override
  State<SelectContactPage> createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 15),
          //new group
          const NewGroupWidget(),
          //new contact
          const NewContactWidget(),
          const SizedBox(height: 10),
          //list
          allContactsWidget(),
          allContactsWidget(),
          allContactsWidget(),
          allContactsWidget(),
          allContactsWidget(),
        ],
      ),
    );
  }

  Padding allContactsWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        children: [
          //image
          CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain',
              )),

          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Abramo',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Lorem ipsum dolor sit amet, consectetur conr',
                fontSize: 13,
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      backgroundColor: AppColors.greenDark,
      title: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: 'Select Contact',
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          CustomText(
            text: '365 contacts',
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
