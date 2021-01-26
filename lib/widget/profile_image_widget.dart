import 'package:flutter/material.dart';

class ProfileImageWidget extends StatelessWidget {
  final String imageUrl;
  final double radius;

  const ProfileImageWidget({
    Key key,
    @required this.imageUrl,
    this.radius = 20,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => CircleAvatar(
        radius: radius,
        backgroundImage: NetworkImage(imageUrl),
      );
}
