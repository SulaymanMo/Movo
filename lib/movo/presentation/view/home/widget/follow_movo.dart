import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';

class FollowMovo extends StatefulWidget {
  const FollowMovo({super.key});

  @override
  State<FollowMovo> createState() => _FollowMovoState();
}

class _FollowMovoState extends State<FollowMovo> {
  final List<IconData> _social = [
    Icons.wechat,
    Icons.tiktok_outlined,
    Icons.facebook_outlined,
    Icons.cloud_circle_outlined,
    Icons.wechat,
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(_social.length, (index) {
        return IconButton(
          onPressed: () {},
          icon: Icon(
            _social[index],
            color: Colors.white,
            size: context.theme.iconTheme.size,
          ),
        );
      }),
    );
  }
}
