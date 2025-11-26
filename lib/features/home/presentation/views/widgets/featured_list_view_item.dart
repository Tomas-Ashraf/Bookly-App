import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatefulWidget {
  const FeaturedListViewItem({super.key});

  @override
  State<FeaturedListViewItem> createState() => _FeaturedListViewItemState();
}

class _FeaturedListViewItemState extends State<FeaturedListViewItem>
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
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: AspectRatio(
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
        ),
      ),
    );
  }
}
