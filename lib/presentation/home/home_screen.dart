import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/search_input_field.dart';
import 'package:recipe_flutter/ui/text_styles.dart';
import 'package:recipe_flutter/ui/color_styles.dart';

class HomeScreen extends StatelessWidget {
  final String name;

  const HomeScreen({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hello $name',
                      style: TextStyles.largeTextBold,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'what are you cooking today?',
                      style: TextStyles.smallerTextRegular.copyWith(
                        color: ColorStyles.gray3,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: ColorStyles.secondary40,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset('assets/images/profile.png'),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Expanded(
                    child: SearchInputField(placeholder: 'Search recipe')),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: ColorStyles.primary100,
                  ),
                  child: const Icon(Icons.tune, color: ColorStyles.white),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
