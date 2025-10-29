import 'package:flutter/widgets.dart';
import 'package:recipe_flutter/domain/model/procedure.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class ProcedureItemCard extends StatelessWidget {
  final Procedure procedure;
  const ProcedureItemCard({super.key, required this.procedure});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: ColorStyles.gray4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Step ${procedure.step}',
          ),
          const SizedBox(height: 5),
          Text(
            procedure.content,
            style: TextStyles.smallerTextRegular
                .copyWith(color: ColorStyles.gray2),
          )
        ],
      ),
    );
  }
}
