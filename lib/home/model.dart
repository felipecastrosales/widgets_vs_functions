import 'package:flutter/widgets.dart';

class Model extends InheritedWidget {
  const Model({
    super.key,
    required this.name,
    required super.child,
  });

  final String name;

  static Model? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Model>();
  }

  @override
  bool updateShouldNotify(Model oldWidget) {
    return oldWidget.name != name;
  }
}
