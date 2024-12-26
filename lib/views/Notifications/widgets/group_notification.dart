import 'package:flutter/material.dart';
import '../../../common/utils/app_colors.dart';
import '../../../common/widgets/custom_text.dart';

class GroupNotification extends StatelessWidget {
  const GroupNotification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: 'Groups', fontSize: 16, fontWeight: FontWeight.w500),
              CustomText(
                text: 'Notification tone',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Default (WaterDrop_preview.ogg)',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyDark,
              ),
            ],
          ),
          SizedBox(height: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Vibrate',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: 'Default',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: AppColors.greyDark,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
