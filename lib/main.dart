import 'package:componet_flutter/widgets/AppBar.dart';
import 'package:flutter/material.dart';

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
        appBar: ResponsiveAppBar(
          title: 'Responsive AppBar', // Tiêu đề
          centerTitle: true, // Căn giữa tiêu đề
          backgroundColor: Colors.teal, // Màu nền
          elevation: 2.0, // Độ nổi
          actions: [
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                debugPrint('Search button pressed');
              },
            ),
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                debugPrint('More button pressed');
              },
            ),
          ],
        ),
        body: const Center(
          child: Text('Responsive AppBar Example'),
        ),
      ),
    );
  }
}
