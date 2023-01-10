import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            const CustomText(
              title: 'Felipe Sales - LF7 | Widget',
            ),
            customText(
              title: 'Felipe Sales - LF7 | Method',
            ),
          ],
        ),
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
