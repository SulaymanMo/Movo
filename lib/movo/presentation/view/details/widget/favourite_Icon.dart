import 'package:flutter/material.dart';
import 'package:movo/core/theme/extension.dart';
import '../../../../../core/helper/colory.dart';

class FavouriteIcon extends StatefulWidget {
  const FavouriteIcon({super.key});

  @override
  State<FavouriteIcon> createState() => _FavouriteIconState();
}

class _FavouriteIconState extends State<FavouriteIcon> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => setState(() {
        isSelected = !isSelected;
      }),
      iconSize: context.theme.iconTheme.size,
      isSelected: isSelected,
      selectedIcon: Icon(Icons.favorite, color: Colory.red.color),
      style: context.theme.iconButtonTheme.style,
      icon: const Icon(Icons.favorite_border, color: Colors.white),
    );
  }
}
