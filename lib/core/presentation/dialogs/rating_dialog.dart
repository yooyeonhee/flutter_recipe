import 'package:flutter/material.dart';
import 'package:recipe_flutter/core/presentation/components/small_button.dart';
import 'package:recipe_flutter/ui/text_styles.dart';
import 'package:recipe_flutter/ui/color_styles.dart';

class RatingDialog extends StatefulWidget {
  final String title;
  final int value;
  final String actionLabel;
  final void Function(int score) onChangeValue;

  const RatingDialog(
      {super.key,
      required this.title,
      required this.value,
      required this.actionLabel,
      required this.onChangeValue});

  @override
  State<RatingDialog> createState() => _RatingDialogState();
}

class _RatingDialogState extends State<RatingDialog> {
  int _value = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Center(
        child: Text(
          widget.title,
          style: TextStyles.smallTextRegular,
        ),
      ),
      content: _RatingBar(
        value: _value,
        onChangeValue: (int value) {
          setState(() {
            _value = value;
          });
        },
      ),
      actions: [
        SmallButton(
          widget.actionLabel,
          onPressed: () {
            widget.onChangeValue(_value);
            Navigator.pop(context);
          },
          color: ColorStyles.rating,
          textStyle: TextStyles.smallTextRegular,
        )
      ],
    );
  }
}

class _RatingBar extends StatelessWidget {
  final int value;
  final void Function(int value) onChangeValue;

  const _RatingBar({required this.value, required this.onChangeValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        5,
        (i) => GestureDetector(
          onTapDown: (_) {
            onChangeValue(i + 1);
          },
          child: Icon(
            i + 1 <= value ? Icons.star : Icons.star_border_outlined,
            size: 28,
            color: ColorStyles.rating,
          ),
        ),
      ),
    );
  }
}
