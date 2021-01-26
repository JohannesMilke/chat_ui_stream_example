import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatPageMobile extends StatefulWidget {
  final Channel channel;

  const ChatPageMobile({
    @required this.channel,
  });

  @override
  _ChatPageMobileState createState() => _ChatPageMobileState();
}

class _ChatPageMobileState extends State<ChatPageMobile> {
  @override
  Widget build(BuildContext context) => StreamChannel(
        channel: widget.channel,
        child: Scaffold(
          appBar: buildAppBar(),
          body: Column(
            children: [
              Expanded(child: MessageListView()),
              MessageInput(),
            ],
          ),
        ),
      );

  Widget buildAppBar() {
    final channelName = widget.channel.extraData['name'];

    return AppBar(
      backgroundColor: Colors.white,
      title: Text(channelName),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.phone),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.videocam),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
