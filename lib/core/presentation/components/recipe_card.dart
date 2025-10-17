import 'package:flutter/material.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;
  final void Function(Recipe recipe) onTapFavorite;

  const RecipeCard({
    super.key,
    required this.recipe,
    required this.onTapFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(
        children: [
          AspectRatio(
            aspectRatio: 315 / 150,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: NetworkImage(recipe.image), fit: BoxFit.cover)),
            ),
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
                    style: TextStyles.smallTextBold
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
            right: 10,
            bottom: 10,
            child: Row(
              children: [
                const Icon(
                  Icons.timer_outlined,
                  size: 17,
                  color: ColorStyles.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  recipe.time,
                  style: TextStyles.smallerTextRegular
                      .copyWith(color: ColorStyles.white),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () => onTapFavorite(recipe),
                  child: ClipOval(
                    child: Container(
                      padding: const EdgeInsets.all(3),
                      width: 24,
                      height: 24,
                      color: ColorStyles.white,
                      child: const Icon(
                        Icons.bookmark_border_outlined,
                        size: 16,
                        color: ColorStyles.primary80,
                      ),
                    ),
                  ),
                )
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
