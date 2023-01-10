import 'package:flutter/material.dart';
import 'package:widgets_vs_functions/home/model.dart';

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
        child: Model(
          name: 'Felipe',
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
    final model = Model.of(context);
    final name = model?.name ?? 'Not Identified'; // Is 'Not Identified'
    return Text('$title - $name');
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
    final model = Model.of(context);
    final name = model?.name ?? 'Not Identified'; // Is `name` atribute
    return Text('$title - $name');
  }
}
