import 'package:flutter/material.dart';
import "../data/assets.dart";
import 'widgets.dart';

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
      color:
          Colors.black.withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
      // 350 can be any appropriate number
      child: Responsive(
        mobile: _CustomAppBarMobile(),
        desktop: _CustomAppBarDesktop(),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  const _CustomAppBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
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
                _AppBarButton(title: "My List", onTap: () => print("My List")),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  const _CustomAppBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(width: 12.0),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(title: "Home", onTap: () => print("Home")),
                _AppBarButton(
                    title: "TV Shows", onTap: () => print("TV Shows")),
                _AppBarButton(title: "Movies", onTap: () => print("Movies")),
                _AppBarButton(title: "Latest", onTap: () => print("Latest")),
                _AppBarButton(title: "My List", onTap: () => print("My List")),
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  icon: const Icon(Icons.search),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print("search"),
                ),
                _AppBarButton(title: "KIDS", onTap: () => print("KIDS")),
                _AppBarButton(title: "DVD", onTap: () => print("DVD")),
                IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 0.0),
                  icon: const Icon(Icons.card_giftcard),
                  iconSize: 28.0,
                  onPressed: () => print("gift"),
                  color: Colors.white,
                ),
                IconButton(
                  padding: const EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
                  icon: const Icon(Icons.notifications),
                  iconSize: 28.0,
                  color: Colors.white,
                  onPressed: () => print("notification"),
                ),
              ],
            ),
          ),
        ],
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
