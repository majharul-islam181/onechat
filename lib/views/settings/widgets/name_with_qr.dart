import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class NameWithQr extends StatelessWidget {
  const NameWithQr({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          //image
          const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage(
              'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
            ),
          ),
          //name
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                  text: 'Susi Franklin',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              CustomText(
                  text: 'Hey there! Iam using Onechat.',
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ],
          ),
          //qr code
          Image.asset(
            'assets/images/qr-code.png',
            height: 40,
            width: 050,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
