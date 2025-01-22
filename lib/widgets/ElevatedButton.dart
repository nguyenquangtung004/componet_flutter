import 'package:flutter/material.dart';

class ResponsiveElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final TextStyle? textStyle;
  final double? elevation;
  final double borderRadius;

  const ResponsiveElevatedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textStyle,
    this.elevation = 2.0,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Điều chỉnh padding và kích thước nút theo tỷ lệ màn hình
    final double horizontalPadding = screenWidth * 0.05; // 5% chiều rộng màn hình
    final double verticalPadding = screenHeight * 0.02; // 2% chiều cao màn hình
    final double fontSize = screenWidth * 0.045; // Font size responsive (4.5% chiều rộng)

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
      child: SizedBox(
        width: double.infinity, // Chiều rộng full màn hình
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color ?? Theme.of(context).primaryColor,
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding, // Padding theo chiều cao màn hình
            ),
            elevation: elevation,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: textStyle ??
                TextStyle(
                  color: Colors.white,
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }
}