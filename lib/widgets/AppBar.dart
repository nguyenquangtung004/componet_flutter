import 'package:flutter/material.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title; // Tiêu đề của AppBar
  final bool centerTitle; // Tiêu đề có căn giữa hay không
  final List<Widget>? actions; // Các nút hành động bên phải
  final Widget? leading; // Widget ở bên trái (ví dụ: icon menu)
  final Color? backgroundColor; // Màu nền AppBar
  final double elevation; // Độ nổi của AppBar

  const ResponsiveAppBar({
    Key? key,
    required this.title,
    this.centerTitle = true,
    this.actions,
    this.leading,
    this.backgroundColor,
    this.elevation = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Lấy kích thước màn hình
    final screenWidth = MediaQuery.of(context).size.width;

    // Điều chỉnh kích thước văn bản dựa trên chiều rộng màn hình
    final double responsiveFontSize = screenWidth * 0.05; // 5% chiều rộng màn hình

    return AppBar(
      title: Text(
        title,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: responsiveFontSize.clamp(16.0, 24.0), // Giới hạn từ 16-24px
        ),
      ),
      centerTitle: centerTitle,
      actions: actions,
      leading: leading,
      backgroundColor: backgroundColor ?? Theme.of(context).primaryColor,
      elevation: elevation,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
