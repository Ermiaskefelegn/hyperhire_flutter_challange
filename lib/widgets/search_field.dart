import 'package:flutter/material.dart';

class CustomTextInputBorder extends StatelessWidget {
  const CustomTextInputBorder({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.controller,
    required this.validator,
    required this.onsaved,
    this.keyboardType,
    required this.inputAction,
    required this.suffixIcon,
    this.focusNode,
  });

  ///input hint text
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final FormFieldValidator<String?> validator;
  final void Function(String?)? onsaved;
  final TextInputAction inputAction;
  final Icon suffixIcon;
  final FocusNode? focusNode;

  ///input hint text
  final Function(String s) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onSaved: onsaved,
      textInputAction: inputAction,
      focusNode: focusNode,
      decoration: InputDecoration(
        fillColor: Colors.white,
        errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedErrorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        focusedBorder: const GradientOutlineInputBorder(
          gradient: LinearGradient(
            colors: [Color(0xff74fbde), Color(0xff3c41bf)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          width: 4.0,
        ),
        enabledBorder: const GradientOutlineInputBorder(
          gradient: LinearGradient(
            colors: [Color(0xff74fbde), Color(0xff3c41bf)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          width: 4.0,
        ),
        hintText: hintText,
        labelText: hintText,
        labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.grey,
            ),
        suffixIcon: suffixIcon,
        hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: Colors.grey,
            ),
      ),
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: Colors.grey,
            decoration: TextDecoration.none,
            decorationThickness: 0.0,
          ),
    );
  }
}

class GradientOutlineInputBorder extends OutlineInputBorder {
  final Gradient gradient;
  final double width;
  @override
  final BorderRadius borderRadius;

  const GradientOutlineInputBorder({
    required this.gradient,
    this.width = 2.0,
    this.borderRadius = BorderRadius.zero,
  }) : super(borderSide: BorderSide.none, borderRadius: borderRadius);

  @override
  void paint(Canvas canvas, Rect rect,
      {double? gapStart,
      double? gapExtent = 0.0,
      double? gapPercentage = 0.0,
      TextDirection? textDirection}) {
    final Paint paint = Paint()
      ..shader = gradient.createShader(rect)
      ..strokeWidth = width
      ..style = PaintingStyle.stroke;

    final RRect outer = borderRadius.toRRect(rect);
    final RRect inner = outer.deflate(borderSide.width / 2);

    canvas.drawRRect(inner, paint);
  }
}
