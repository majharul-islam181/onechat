import 'package:flutter/material.dart';
import 'package:onechat/common/utils/app_colors.dart';
import 'package:onechat/views/IndexPage/widgets/conversation_widget.dart';

import '../../common/widgets/custom_text.dart';

/*
class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OneChat',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: AppColors.greenDark,
        actions: const [
          Icon(Icons.search, color: Colors.white),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          const ConversationWidget(
            userName: 'Abramo',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Majharul',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Abramo',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Majharul',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Abramo',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Majharul',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Abramo',
          ),
          shortDividerWidget(),
          const ConversationWidget(
            userName: 'Majharul',
          ),
        ],
      ),
    );
  }

  Padding shortDividerWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Divider(
        thickness: 0.5,
      ),
    );
  }
}

class ConversationWidget extends StatelessWidget {
  const ConversationWidget({super.key, required this.userName});
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
              'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain',
            ),
          ),
          // SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: userName,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              const CustomText(
                text: 'Lorem ipsum dolor sit amet',
                fontSize: 12,
              ),
            ],
          ),
          // SizedBox(width: 15),
          const CustomText(text: '5:27 am', fontSize: 15),
        ],
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'OneChat',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: AppColors.greenDark,
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 10),
        itemCount: 10, // Number of conversations
        separatorBuilder: (context, index) => shortDividerWidget(),
        itemBuilder: (context, index) {
          return ConversationWidget(
            userName: index.isEven ? 'Abramo' : 'Majharul',
            isUnread: index.isEven, // Simulating unread chats
          );
        },
      ),
    );
  }

  Padding shortDividerWidget() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Divider(
        thickness: 0.4,
        // color: Colors.grey,
      ),
    );
  }
}

class ConversationWidget extends StatelessWidget {
  const ConversationWidget({
    super.key,
    required this.userName,
    this.isUnread = false,
  });

  final String userName;
  final bool isUnread;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to chat page
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        decoration: BoxDecoration(
          color: Colors.grey[50],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                'https://th.bing.com/th/id/OIP.leRaZskYpTKA55a0St0tZgHaJa?rs=1&pid=ImgDetMain',
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'Lorem ipsum dolor sit amet...',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '5:27 am',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
                if (isUnread)
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Text(
                      '3',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class AppColors {
  static const greenDark = Color(0xFF075E54);
  static const greenLight = Color(0xFF25D366);
}
