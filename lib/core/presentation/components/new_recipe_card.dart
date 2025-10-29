import 'package:flutter/material.dart';
import 'package:recipe_flutter/domain/model/recipe.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class NewRecipeCard extends StatelessWidget {
  final Recipe recipe;

  const NewRecipeCard({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 251,
      height: 127,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              width: 251,
              height: 95,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              padding: const EdgeInsets.only(
                top: 10,
                left: 9,
              ),
            ),
          ),
          Positioned(
            right: 9.3,
            child: SizedBox(
              width: 80,
              height: 80,
              child: CircleAvatar(
                backgroundImage: NetworkImage(recipe.image),
              ),
            ),
          ),
          Positioned(
            top: 42,
            left: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140,
                  child: Text(
                    recipe.name,
                    style: TextStyles.smallTextBold
                        .copyWith(color: ColorStyles.gray1),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: List.generate(
                      recipe.rating.toInt(),
                      (index) => const Icon(Icons.star,
                          color: ColorStyles.rating, size: 12)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(recipe.image),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      recipe.chef,
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
              right: 9.3,
              bottom: 10,
              child: Row(
                children: [
                  const Icon(
                    Icons.alarm,
                    size: 17,
                    color: ColorStyles.gray3,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    recipe.time,
                    style: TextStyles.smallerTextRegular
                        .copyWith(color: ColorStyles.gray3),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
