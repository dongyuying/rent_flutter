import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

final networkUriRef = RegExp('^http');
final localUriRef = RegExp('^static');

class CommonImage extends StatelessWidget {
  final String src;

  const CommonImage(this.src, {super.key});

  @override
  Widget build(BuildContext context){
    if (networkUriRef.hasMatch(src)){
      return Image(image: CachedNetworkImageProvider(src));
    }
    if (localUriRef.hasMatch(src)) {
      return Image.asset(src, fit: BoxFit.cover);
    }

    assert(false, '图片地址不合法！');
    return Container();
  }
}