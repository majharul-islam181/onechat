import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class ConversationWidget extends StatelessWidget {
  const ConversationWidget({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain',
            ),
          ),
          // SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: userName,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const CustomText(
                text: 'Lorem ipsum dolor sit amet',
                fontSize: 12,
              ),
            ],
          ),
          // SizedBox(width: 15),
          const CustomText(text: '5:27 am', fontSize: 15),
        ],
      ),
    );
  }
}
