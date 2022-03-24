import 'dart:io';
import 'package:flutter/material.dart';

class ImageUploadWidget extends StatelessWidget {
  final File? imageFile;
  final double? height;
  final String? imagePlaceholder;
  const ImageUploadWidget({Key? key, this.imageFile, this.height, this.imagePlaceholder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height == null ? 250.0 : height,
      width: double.infinity,
      alignment: Alignment.center,
      child: imageFile == null
          ? Center(
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 80,
                child: imagePlaceholder != null && imagePlaceholder!.length > 0 ? Image.asset(imagePlaceholder!) : Icon(
                Icons.camera_enhance,
                color: Colors.white.withOpacity(0.5),
                size: 30,
              )
              ),
            )
          : Image.file(imageFile!),
    );
  }
}
