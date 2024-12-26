import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class NewContactWidget extends StatelessWidget {
  const NewContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Icon(
              Icons.person_add_alt_1_sharp,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: CustomText(
              text: 'New Contact',
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
