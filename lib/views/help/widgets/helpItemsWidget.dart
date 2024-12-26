import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class helpItemsWidget extends StatelessWidget {
  const helpItemsWidget({
    super.key,
    required this.icon,
    required this.title,
    this.title2 = '',
  });
  final IconData? icon;
  final String title;
  final String title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        children: [
          //icons
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              icon,
              size: 28,
              color: Colors.black.withOpacity(0.5),
              // Icons.question_mark_outlined,
            ),
          ),

          //2 text in column
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: title,
                    fontSize: 18,
                    color: Colors.black.withOpacity(0.8),
                    fontWeight: FontWeight.w600,
                  ),
                  title2 == ''
                      ? const SizedBox()
                      : CustomText(
                          text: title2,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
