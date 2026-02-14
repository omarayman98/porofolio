import 'dart:ui';
import 'package:flutter/material.dart';

class SkillCard extends StatefulWidget {
  final String skill;
  final double percentage; // 0.0 → 1.0
  final IconData icon;

  const SkillCard({
    super.key,
    required this.skill,
    required this.percentage,
    required this.icon,
  });

  @override
  State<SkillCard> createState() => _SkillCardState();
}

class _SkillCardState extends State<SkillCard>
    with SingleTickerProviderStateMixin {
  bool _isHovered = false;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    _animation =
        Tween<double>(begin: 0, end: widget.percentage).animate(_controller);

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        transform:
        _isHovered ? (Matrix4.identity()..scale(1.07)) : Matrix4.identity(),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: 230,
              height: 160,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: _isHovered
                    ? const LinearGradient(
                  colors: [Color(0xFF448AFF), Color(0xFF00E5FF)],
                )
                    : null,
                color: !_isHovered
                    ? Colors.white.withOpacity(0.07)
                    : Colors.white.withOpacity(0.05),
                border: Border.all(
                  color: Colors.white.withOpacity(0.15),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(widget.icon, size: 36, color: Colors.white),
                  const SizedBox(height: 20),
                  Text(
                    widget.skill,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  // const Spacer(),
                  // AnimatedBuilder(
                  //   animation: _animation,
                  //   builder: (context, child) {
                  //     return Column(
                  //       crossAxisAlignment: CrossAxisAlignment.start,
                  //       children: [
                  //         LinearProgressIndicator(
                  //           value: _animation.value,
                  //           backgroundColor:
                  //           Colors.white.withOpacity(0.2),
                  //           valueColor:
                  //           const AlwaysStoppedAnimation(Colors.white),
                  //         ),
                  //         const SizedBox(height: 6),
                  //         Text(
                  //           "${(_animation.value * 100).toInt()}%",
                  //           style: const TextStyle(
                  //               color: Colors.white70, fontSize: 14),
                  //         ),
                  //       ],
                  //     );
                  //   },
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
