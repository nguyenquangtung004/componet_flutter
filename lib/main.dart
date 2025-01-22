import 'package:flutter/material.dart';
import 'widgets/TextButton.dart'; // Đường dẫn tới widget

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Responsive Text Button Example'),
        ),
        body: Center(
          child: ResponsiveTextButton(
            
            text: 'Click Me!',
            onPressed: () {
              debugPrint('Responsive Button Pressed!');
            },
            textColor: Colors.blue,
            
          ),
        ),
      ),
    );
  }
}
