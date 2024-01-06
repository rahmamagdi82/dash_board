import 'package:flutter/material.dart';

class CustomFadingWidget extends StatefulWidget{
  const CustomFadingWidget({super.key, required this.child});

  final Widget child;

  @override
  State<CustomFadingWidget> createState() => _CustomFadingWidgetState();
}

class _CustomFadingWidgetState extends State<CustomFadingWidget> with SingleTickerProviderStateMixin{
  late AnimationController animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this,duration: const Duration(milliseconds: 700));
    animation = Tween<double>(begin: 0.2,end: 0.8).animate(animationController);

    animationController.addListener(() {
        setState((){});
      });
    animationController.repeat(reverse: true);
  }
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: animation.value,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    animationController.removeListener(() {});
    animationController.dispose();
    super.dispose();
  }
}