import 'package:flutter/material.dart';
import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/common/widgets/custom_text.dart';
import 'package:onechat/views/chatPage/widgets/date_view_widget.dart';
/*
class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

/*
class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain'),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //name
                    CustomText(
                      text: 'Abramo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    CustomText(
                      text: 'Online',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: Column(
        children: [
          const DateViewWidget(),
          // getChat(),
          // getMyChat(),
          messagingBar(),
        ],
      ),
    );
  }

  getChat() {}

  getMyChat() {}

  messagingBar() {
    return Positioned(
      bottom: 0,
      left: 0,
      child: Container(
        height: 70,
        width: double.infinity,
        padding: const EdgeInsets.only(left: 10, right: 10),
        // color: AppColors.greenLight,
        decoration: BoxDecoration(
            color: AppColors.greenLight,
            borderRadius: BorderRadius.circular(15)),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Icon(
              Icons.attach_file,
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.camera_alt,
              color: Colors.grey,
            ),
            const SizedBox(width: 10),
            Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.greenDark,
                ),
                child: const Center(
                  child: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
*/


/*
class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain'),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Abramo',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    CustomText(
                      text: 'Online',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: Column(
        children: [
          const DateViewWidget(), // Your custom widget
          Expanded(
            child: Container(
              color: Colors.white, // Chat background color
              child: ListView(), // Placeholder for chat messages
            ),
          ),
          getChatUser(),
          getChatMine(),
          messagingBar(),
        ],
      ),
    );
  }

  messagingBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
      child: Container(
        height: 60,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: AppColors.greenLight,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            const Icon(
              Icons.attach_file,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.greenDark,
              ),
              child: const Center(
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/

*/

import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                      'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain'),
                ),
                SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abramo',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      'Online',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
            Icon(Icons.more_vert, color: Colors.white),
          ],
        ),
        backgroundColor: AppColors.greenDark,
      ),
      body: Column(
        children: [
          const DateViewWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              children: [
                getChatUser('Hello! How are you?'),
                getChatMine('Hi! I am doing great, thank you. What about you?'),
                getChatUser('I am good too! Let\'s meet up later.'),
                getChatMine('Sure, sounds good. Let\'s decide a time.'),
              ],
            ),
          ),
          messagingBar(),
        ],
      ),
    );
  }

  Widget getChatUser(String message) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
    );
  }

  Widget getChatMine(String message) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: AppColors.greenDark,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }

  Widget messagingBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: AppColors.greenDark,
          borderRadius: BorderRadius.circular(15),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type a message',
                  hintStyle: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.attach_file,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
            const SizedBox(width: 10),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.green,
              ),
              child: const Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DateViewWidget extends StatelessWidget {
  const DateViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Text(
          'Today',
          style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
