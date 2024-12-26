import 'package:flutter/material.dart';

import '../../../common/utils/app_colors.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: RichText(
        textAlign: TextAlign.center,
        text: const TextSpan(
          style: TextStyle(height: 1.5),
          children: [
            TextSpan(
              text: 'By continuing, you agree to our ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: 'Terms of Service',
              style: TextStyle(color: AppColors.blueDark),
            ),
            TextSpan(
              text: ' and ',
              style: TextStyle(color: Colors.grey),
            ),
            TextSpan(
              text: 'Privacy Policy',
              style: TextStyle(color: AppColors.blueDark),
            ),
          ],
        ),
      ),
    );
  }
}
