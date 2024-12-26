import 'package:flutter/material.dart';

import '../../../common/widgets/custom_text.dart';

class NewGroupWidget extends StatelessWidget {
  const NewGroupWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: Icon(
              Icons.person,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.0),
            child: CustomText(
              text: 'New Group',
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
