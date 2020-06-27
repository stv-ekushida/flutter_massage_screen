import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';

class AvatarFromUrl extends StatelessWidget {
  final String imageUrl;
  const AvatarFromUrl({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    if (imageUrl == null) {
      return const Icon(Icons.broken_image);
    } else {
      return TransitionToImage(
        image: AdvancedNetworkImage(imageUrl, useDiskCache: true),
        placeholder: const Icon(Icons.broken_image),
        fit: BoxFit.cover,
      );
    }
  }
}
