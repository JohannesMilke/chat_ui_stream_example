import 'package:chat_ui_stream_example/page/chat/chat_page_mobile.dart';
import 'package:chat_ui_stream_example/widget/channel_list_widget.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';

class ChatsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final idUser = StreamChat.of(context).user.id;

    return ChannelListView(
      filter: {
        'members': {
          '\$in': [idUser],
        }
      },
      sort: [SortOption('last_message_at')],
      pagination: PaginationParams(limit: 20),
      channelPreviewBuilder: (context, channel) =>
          ChannelListWidget(channel: channel),
    );
  }
}
