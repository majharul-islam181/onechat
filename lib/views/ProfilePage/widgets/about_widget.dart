import 'package:flutter/material.dart';

import '../../../common/utils/app_colors.dart';
import '../../../common/widgets/custom_text.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        //icon
        Expanded(
          flex: 1,
          child: Icon(
            Icons.info_outline,
            color: Colors.grey,
            size: 28,
          ),
        ),
        //space
        SizedBox(
          width: 10,
        ),
        //name
        Expanded(
          flex: 6,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'About',
                color: AppColors.greyDark,
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Hey there! I am using Onechat',
                fontSize: 15,
                // color: AppColors.greyDark,
                color: Color.fromARGB(255, 56, 56, 56),
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),

        Expanded(
          flex: 1,
          child: Icon(
            Icons.edit,
            color: AppColors.greenDark,
            size: 25,
          ),
        ),
      ],
    );
  }
}
