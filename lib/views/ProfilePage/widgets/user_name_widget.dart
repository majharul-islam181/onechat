import 'package:flutter/material.dart';

import '../../../common/utils/app_colors.dart';
import '../../../common/widgets/custom_text.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({
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
            Icons.person,
            // color: AppColors.greenDark,
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
              Text(
                'User Name',
                style: TextStyle(
                  color: AppColors.greyDark,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomText(
                text: 'Susi Franklin',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text:
                    'This is not your username or pin. This name will be visible to your Onechat contacts.',
                fontSize: 13,
                color: AppColors.greyDark,
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
