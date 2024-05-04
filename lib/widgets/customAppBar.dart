import 'package:flutter/material.dart';
import "../data/assets.dart";

class CustomAppBar extends StatelessWidget {
  double scrollOffset;

  CustomAppBar({Key? key, required this.scrollOffset}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(scrollOffset);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 24.0,
      ),
      color: Colors.black
          .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      // 350 can be any appropriate number
      child: SafeArea(
        child: Row(
          children: [
            Image.asset(Assets.netflixLogo0),
            const SizedBox(width: 12.0),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _AppBarButton(
                      title: "TV Shows", onTap: () => print("TV Shows")),
                  _AppBarButton(title: "Movies", onTap: () => print("Movies")),
                  _AppBarButton(
                      title: "My List", onTap: () => print("My List")),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  _AppBarButton({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
