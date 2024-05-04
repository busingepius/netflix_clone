import 'package:flutter/material.dart';

import '../models/content.dart';
import 'widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  ContentHeader({Key? key, required this.featuredContent}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl!),
          ),
        ),
        Positioned(
          bottom: 40.0,
          left: 0.0,
          right: 0.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticleIconButton(
                icon: Icons.add,
                title: "List",
                onTap: () => print("My List"),
              ),
              _PlayButton(),
              VerticleIconButton(
                icon: Icons.info_outline,
                title: "Info",
                onTap: () => print("Info"),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  const _PlayButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // padding: const EdgeInsets.fromLTRB(15.0,5.0,20.0,5.0),
      // style:ButtonStyle(backgroundColor:Colors.red),
      onPressed: () => print("Play"),
      icon: const Icon(Icons.play_arrow, size: 30.0), label:const Text("Play"),
    );
  }
}
