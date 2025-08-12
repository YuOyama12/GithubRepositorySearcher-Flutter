import 'package:flutter/material.dart';

class AvatarIcon extends StatelessWidget {
  final String? avatarUrl;
  final double size;

  const AvatarIcon({
    super.key,
    required this.avatarUrl,
    this.size = 72.0,
  });

  @override
  Widget build(BuildContext context) {
    return Image.network(
      avatarUrl ?? "",
      height: size,
      width: size,
      fit: BoxFit.contain,
      errorBuilder: (_, _, _) {
        return Center(
          child: SizedBox(
            height: size,
            width: size,
            child: Icon(Icons.error),
          ),
        );
      },
    );
  }
}