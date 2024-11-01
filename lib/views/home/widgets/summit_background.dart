import 'package:flutter/material.dart';

class SummitPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final normalizedHeight = size.height / 100;
    final normalizedWidth = size.width / 100;

    const red = Color.fromRGBO(238, 0, 0, 1.0);
    const orange = Color.fromRGBO(245, 146, 27, 1.0);
    const darkBlue = Color.fromRGBO(0, 34, 80, 1.0);
    const teal = Color.fromRGBO(55, 163, 163, 1.0);
    const lightBlue = Color.fromRGBO(224, 240, 255, 1.0);
    const lightBlue2 = Color.fromRGBO(185, 218, 252, 1.0);

    final redOrangeLightBlue = (normalizedWidth * 85, normalizedHeight * 45.5);
    final redOrangeTealDarkBlue =
        (normalizedWidth * 86.75, normalizedHeight * 42.25);
    final redDarkBlue = (normalizedWidth * 63.5, 0.0);
    final darkBlueTeal = (normalizedWidth * 100, normalizedHeight * 17.5);
    final tealOrange = (normalizedWidth * 100, normalizedHeight * 66);
    final orangeLightBlue = (normalizedWidth * 100, normalizedHeight * 72);

    canvas.drawPath(
      Path()
        ..moveTo(normalizedWidth * 60, 0)
        ..lineTo(redOrangeLightBlue.$1, redOrangeLightBlue.$2)
        ..lineTo(redOrangeTealDarkBlue.$1, redOrangeTealDarkBlue.$2)
        ..lineTo(redDarkBlue.$1, redDarkBlue.$2)
        ..close(),
      Paint()..color = red,
    );

    canvas.drawPath(
      Path()
        ..moveTo(redOrangeLightBlue.$1, redOrangeLightBlue.$2)
        ..lineTo(orangeLightBlue.$1, orangeLightBlue.$2)
        ..lineTo(tealOrange.$1, tealOrange.$2)
        ..lineTo(redOrangeTealDarkBlue.$1, redOrangeTealDarkBlue.$2)
        ..close(),
      Paint()..color = orange,
    );

    canvas.drawPath(
      Path()
        ..moveTo(redDarkBlue.$1, redDarkBlue.$2)
        ..lineTo(redOrangeTealDarkBlue.$1, redOrangeTealDarkBlue.$2)
        ..lineTo(darkBlueTeal.$1, darkBlueTeal.$2)
        ..lineTo(normalizedWidth * 100, 0)
        ..close(),
      Paint()..color = darkBlue,
    );

    canvas.drawPath(
      Path()
        ..moveTo(redOrangeTealDarkBlue.$1, redOrangeTealDarkBlue.$2)
        ..lineTo(tealOrange.$1, tealOrange.$2)
        ..lineTo(darkBlueTeal.$1, darkBlueTeal.$2)
        ..close(),
      Paint()..color = teal,
    );

    canvas.drawPath(
      Path()
        ..moveTo(redOrangeLightBlue.$1, redOrangeLightBlue.$2)
        ..lineTo(orangeLightBlue.$1, orangeLightBlue.$2)
        ..lineTo(normalizedWidth * 100, normalizedHeight * 100)
        ..lineTo(normalizedWidth * 57, normalizedHeight * 100)
        ..close(),
      Paint()..color = lightBlue,
    );

    canvas.drawRect(
      Rect.fromLTRB(
        0.0,
        0.0,
        normalizedWidth * 5,
        normalizedHeight * 100,
      ),
      Paint()..color = darkBlue,
    );

    canvas.drawRect(
      Rect.fromLTRB(
        normalizedWidth * 5,
        0.0,
        normalizedWidth * 7,
        normalizedHeight * 100,
      ),
      Paint()..color = red,
    );

    canvas.drawRect(
      Rect.fromLTRB(
        normalizedWidth * 7,
        0.0,
        normalizedWidth * 12,
        normalizedHeight * 100,
      ),
      Paint()..color = lightBlue2,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class SummitBackground extends StatelessWidget {
  final Widget? child;

  const SummitBackground({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        CustomPaint(
          painter: SummitPainter(),
        ),
        child ?? const SizedBox.shrink(),
      ],
    );
  }
}
