import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class ReusableItems extends StatelessWidget {
  const ReusableItems({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
  });
  final IconData? icon;
  final String title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 22,
            ),
            child: Row(
              children: [
                //icon
                Icon(
                  icon,
                  color: Colors.grey,
                  size: 25,
                ),
                //chat with text in column
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: title,
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CustomText(
                        text: subtitle,
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
