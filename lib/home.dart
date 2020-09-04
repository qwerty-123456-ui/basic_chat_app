import 'package:flutter/material.dart';
import 'chatscreen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Crazy Chats"),
      ),
      body: ChatScreen(),
    );
  }
}