import 'package:chat_ui_stream_example/api/stream_api.dart';
import 'package:chat_ui_stream_example/api/stream_channel_api.dart';
import 'package:chat_ui_stream_example/api/stream_user_api.dart';
import 'package:chat_ui_stream_example/page/home/home_page_mobile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:uuid/uuid.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  // final idUser = Uuid().v4();
  // print('IdUser: $idUser');

  // await StreamUserApi.createUser(
  //   idUser: idUser,
  //   username: 'Johannes',
  //   urlImage:
  //       'https://images.unsplash.com/photo-1497551060073-4c5ab6435f12?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80',
  // );

  final idUser = '2b2f371d-06a0-4731-b5fc-74b31ea99fbc';
  await StreamUserApi.login(idUser: idUser);

  // await StreamChannelApi.createChannelWithUsers(
  //   name: 'My First Channel',
  //   urlImage:
  //       'https://images.unsplash.com/photo-1611448747042-8c791ed8af9a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
  //   idMembers: [idUser],
  // );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Facebook Messenger';

  @override
  Widget build(BuildContext context) => StreamChat(
        streamChatThemeData: StreamChatThemeData(),
        client: StreamApi.client,
        child: ChannelsBloc(
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: title,
              theme: ThemeData(
                primaryColor: Colors.white,
              ),
              home: HomePageMobile()),
        ),
      );
}
