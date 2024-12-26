import 'package:flutter/material.dart';

class GetImagePicker extends StatelessWidget {
  const GetImagePicker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          const CircleAvatar(
            radius: 100,
            backgroundImage: NetworkImage(
              'https://plus.unsplash.com/premium_photo-1673967770669-91b5c2f2d0ce?q=80&w=1930&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            ),
          ),
          Container(
            // height: 30, // Smaller height
            // width: 30, // Smaller width
            decoration: const BoxDecoration(
              color: Colors.green, // Green background color
              shape: BoxShape.circle, // Circular shape
            ),
            child: IconButton(
              icon: const Icon(Icons.camera_alt,
                  color: Colors.white, size: 25), // Smaller icon
              padding: EdgeInsets.zero, // Remove default padding
              onPressed: () {
                // Open camera or gallery on press
              },
            ),
          ),
        ],
      ),
    );
  }
}
