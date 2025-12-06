import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatefulWidget {
  const CustomBookImage({super.key});

  @override
  State<CustomBookImage> createState() => _CustomBookImageState();
}

class _CustomBookImageState extends State<CustomBookImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: const DecorationImage(
            image: AssetImage(AssetsData.itemImage),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
    //  Padding(
    //   padding: const EdgeInsets.only(right: 8.0),
    //   child: SizedBox(
    //     height: MediaQuery.of(context).size.height * 0.3,
    //     child:
    //   ),
    // );
  }
}
