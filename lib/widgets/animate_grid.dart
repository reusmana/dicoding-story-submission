import 'package:flutter/material.dart';

class AnimateGrid extends StatefulWidget {
  final Widget child;
  final Duration delay;

  const AnimateGrid({
    super.key,
    required this.child,
    this.delay = Duration.zero,
  });

  @override
  State<AnimateGrid> createState() => _AnimatedGridItemState();
}

class _AnimatedGridItemState extends State<AnimateGrid>
    with SingleTickerProviderStateMixin {
  double opacity = 0;
  double scale = 0;

  @override
  void initState() {
    super.initState();
    Future.delayed(widget.delay, () {
      if (mounted) {
        setState(() {
          opacity = 1;
          scale = 1;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      duration: const Duration(milliseconds: 500),
      opacity: opacity,
      child: AnimatedScale(
        duration: const Duration(milliseconds: 500),
        scale: scale,
        curve: Curves.easeInOut,
        child: widget.child,
      ),
    );
  }
}
