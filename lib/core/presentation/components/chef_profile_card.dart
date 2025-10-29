import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/small_button.dart';
import 'package:recipe_flutter/domain/model/chef_profile.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class ChefProfileCard extends StatelessWidget {
  final ChefProfile profile;
  const ChefProfileCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(profile.image,
              width: 40, height: 40, fit: BoxFit.cover),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              profile.name,
              style: TextStyles.smallTextBold,
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: ColorStyles.primary80,
                  size: 17,
                ),
                Text(profile.address,
                    style: TextStyles.smallerTextRegular
                        .copyWith(color: ColorStyles.gray3))
              ],
            )
          ],
        ),
        const Spacer(),
        SizedBox(
            width: 85,
            height: 37,
            child: SmallButton('Follow', onPressed: () {}))
      ],
    );
  }
}
