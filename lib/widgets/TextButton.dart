import 'package:flutter/material.dart';

class ResponsiveTextButton extends StatelessWidget {
  final String text; // Văn bản hiển thị trên nút
  final VoidCallback onPressed; // Hành động khi nút được nhấn
  final Color? textColor; // Màu văn bản
  final TextStyle? textStyle; // Kiểu dáng văn bản
  final EdgeInsetsGeometry? padding; // Khoảng cách bên trong nút

  const ResponsiveTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
    this.textStyle,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Tính toán padding và font size dựa trên kích thước màn hình
    final double horizontalPadding = screenWidth * 0.04; // 4% chiều rộng
    final double verticalPadding = screenHeight * 0.015; // 1.5% chiều cao
    final double fontSize = screenWidth * 0.045; // Font size dựa trên chiều rộng

    return Padding(
      padding: const EdgeInsets.all(8.0), // Padding bên ngoài nút
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          padding: padding ??
              EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: verticalPadding,
              ),
          backgroundColor: Colors.amber,
          foregroundColor: textColor ?? Theme.of(context).primaryColor,
          textStyle: textStyle ??
              TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
              ),
        ),
        child: Text(text),
      ),
    );
  }
}
