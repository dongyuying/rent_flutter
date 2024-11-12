import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

const List<String> defaultImage = [
  'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg',
  'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg',
  'https://pics2.baidu.com/feed/b8389b504fc2d56260ddafab993c49e177c66c5f.jpeg',
];

var imageWidth = 750;
var imageHeight = 424;
var imageWidthHeightRatio = imageWidth / imageHeight;

class CommonImagePicker extends StatefulWidget {
  final ValueChanged<List<File>> onChange;

  const CommonImagePicker({super.key, required this.onChange});

  @override
  _CommonImagePickerState createState() => _CommonImagePickerState();
}

class _CommonImagePickerState extends State<CommonImagePicker> {
  List<File> files = [];

  _pickImage() async {
    var image = await ImagePicker().pickImage(source: ImageSource.gallery);

    if (image == null) return;
    setState(() {
      /***将XFile转为File类型 */
      File _image = File(image.path);
      files = files..add(_image);
    });

    if (widget.onChange != null) {
      widget.onChange(files);
    }
  }

  @override
  Widget build(BuildContext context) {
    var width = (MediaQuery.of(context).size.width - 10.0 * 4) / 3;
    var height = width / imageWidthHeightRatio;

    Widget addButton = GestureDetector(
      onTap: () {
        _pickImage();
      },
      behavior: HitTestBehavior.translucent,
      child: Container(
        width: width,
        height: height,
        color: Colors.grey,
        child: const Center(
          child: Text('+',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w100)),
        ),
      ),
    );

    Widget wrapper(File file) {
      return Stack(
        clipBehavior:Clip.none,
        children: [
        Image.file(file, width: width, height: height, fit: BoxFit.cover),
        Positioned(
            top: -25,
            right: -22,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    files = files..remove(file);
                  });

                  if (widget.onChange != null) {
                    widget.onChange(files);
                  }
                },
                icon: const Icon(Icons.delete_forever, color: Colors.red)))
      ]);
    }

    List<Widget> list = files.map((item) => wrapper(item)).toList()
      ..add(addButton);

    return Container(
        padding: const EdgeInsets.all(10),
        child: Wrap(spacing: 10, runSpacing: 10, children: list));
  }
}
