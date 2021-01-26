import 'package:chat_ui_stream_example/widget/chats_widget.dart';
import 'package:chat_ui_stream_example/widget/user_image_widget.dart';
import 'package:flutter/material.dart';

class HomePageMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Chats'),
          centerTitle: true,
          leading: UserImageWidget(),
          actions: [
            IconButton(icon: Icon(Icons.edit), onPressed: () {}),
            SizedBox(width: 8),
          ],
        ),
        body: ChatsWidget(),
      );
}
