import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class UserImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = StreamChat.of(context).user;
    final urlImage = user.extraData['image'];

    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        child: CircleAvatar(
          backgroundImage: NetworkImage(urlImage),
        ),
      ),
    );
  }
}
