import 'package:flutter/material.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class RecipeGridItem extends StatelessWidget {
  final Recipe recipe;

  const RecipeGridItem({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: NetworkImage(recipe.image), fit: BoxFit.cover)),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 200,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallerTextBold
                        .copyWith(color: ColorStyles.white),
                  ),
                ),
                Text(
                  'By ${recipe.chef}',
                  style: TextStyles.smallerTextRegular
                      .copyWith(color: ColorStyles.white),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 10,
            child: Container(
              width: 37,
              height: 16,
              decoration: BoxDecoration(
                  color: ColorStyles.secondary20,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.star,
                    size: 8,
                    color: ColorStyles.secondary100,
                  ),
                  Text(
                    recipe.rating.toString(),
                    style: TextStyles.smallerTextRegular
                        .copyWith(color: ColorStyles.black),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
