import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:movo/core/theme/extension.dart';
import '../../../../../core/helper/colory.dart';
import '../../../../domain/entity/movie_details_entity.dart';

class Storyline extends StatefulWidget {
  const Storyline(this._entity, {super.key});

  final MovieDetailsEntity _entity;

  @override
  State<Storyline> createState() => _StorylineState();
}

class _StorylineState extends State<Storyline> {
  bool _showLess = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _showLess = !_showLess;
        });
      },
      child: ReadMoreText(
        widget._entity.overview,
        isCollapsed: ValueNotifier(_showLess),
        trimLines: 4,
        trimMode: TrimMode.Line,
        textAlign: TextAlign.justify,
        trimExpandedText: ' Show less',
        trimCollapsedText: ' Read more',
        moreStyle: context.textTheme.labelMedium,
        lessStyle: context.textTheme.labelMedium,
        colorClickableText: Colory.yellow.color,
      ),
    );
  }
}
