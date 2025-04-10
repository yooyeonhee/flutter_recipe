import 'package:flutter/material.dart';
import 'package:recipe_flutter/ui/color_styles.dart';
import 'package:recipe_flutter/ui/text_styles.dart';

class SmallButton extends StatefulWidget {
  final String text;
  final void Function() onPressed;

  const SmallButton(
    this.text, {
    super.key,
    required this.onPressed,
  });

  @override
  State<SmallButton> createState() => _SmallButtonState();
}

class _SmallButtonState extends State<SmallButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          isPressed = true;
        });
      },
      onTapUp: (_) {
        setState(() {
          isPressed = false;
        });
        widget.onPressed();
      },
      onTapCancel: () {
        setState(() {
          isPressed = false;
        });
      },
      child: Container(
        height: 37,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isPressed ? ColorStyles.gray4 : ColorStyles.primary100,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.text,
              // copyWith를 사용하게 되면 런타임에 복사가 되기때문에 성능이 저하될 수 있다. TextStyles 내부에 컬러 속성까지 부여해서 해결할 수 있다.
              style: TextStyles.normalTextBold.copyWith(
                color: ColorStyles.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
