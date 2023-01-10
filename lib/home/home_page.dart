import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Isn't rebuilded because it's a const widget | const.
            const CustomText(
              title: 'Felipe Sales - LF7 | Widget',
            ),
            // Is rebuilded because it's a method | not const.
            customText(
              title: 'Felipe Sales - LF7 | Method',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {});
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget customText({
    required String title,
  }) {
    debugPrint('Building CustomText Method');
    return Text(title);
  }
}

class CustomText extends StatelessWidget {
  const CustomText({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    debugPrint('Building CustomText Widget');
    return Text(title);
  }
}
