import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Background extends StatelessWidget {
  final String svg;
  final Widget child;
  final bool stretched;
  const Background({super.key, 
    required this.svg,
    required this.child,
    required this.stretched,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment:
                stretched == false ? Alignment.topRight : Alignment.center,
            child: SvgPicture.asset(
              svg,
              width: stretched == true ? double.infinity : null,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0),
                ],
                begin: Alignment.center,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
