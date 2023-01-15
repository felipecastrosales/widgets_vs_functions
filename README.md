# Widgets vs Methods 

In Flutter, it is generally recommended to use classes, specifically widgets, to create UI components. Widgets are classes that define the layout, structure, and appearance of the UI. They are immutable, which means that their properties cannot be changed after they are created. This makes it easy to reason about the state of the UI and to avoid bugs that can occur when state is modified unexpectedly. Additionally, widgets can be composed and reused, which can make it easier to build complex UI.

While you can use methods or functions to create widgets, this approach is less common because it is harder to manage the state and composition of the UI. However, you can create a function that returns a widget, this can be useful in some cases as it can simplify the code and make it more readable.

In summary, using classes (widgets) is the recommended approach when building UI components in Flutter.

> ## TL;DR:<br>Prefer using classes over functions to make reusable widget-tree.

---

## View more 

- [What is the difference between functions and classes to create reusable widgets?](https://stackoverflow.com/questions/53234825/what-is-the-difference-between-functions-and-classes-to-create-reusable-widgets)
- [Methods vs Stateless Widget to return widgets](https://www.reddit.com/r/FlutterDev/comments/mp4xpx/methods_vs_stateless_widget_to_return_widgets/)
- [Splitting widgets to methods is an antipattern](https://iiro.dev/splitting-widgets-to-methods-performance-antipattern/)
- [🔷 Widgets vs. Helper Methods ✨](https://twitter.com/flutterdev/status/1469374537481351173)
- [Flutter Performance Tip: Keep Your Build Method Pure](https://www.funwithflutter.dev/flutter-keep-your-build-method-pure/)
- [Widgets vs helper methods | Decoding Flutter](https://www.youtube.com/watch?v=IOyq-eTRhvo)
- [🇧🇷 Não use functions para criar widgets](https://www.youtube.com/watch?v=FMrK4owucBU)

--- 

> <h4 align="center"> This project is a small POC, to show in a practical way the behavior and prove the aforementioned theses. </h4>

