import 'package:flutter/material.dart';

extension EasyNavigator on BuildContext {
  void navigatePushTo(Widget page) {
    Navigator.of(this).push(MaterialPageRoute(builder: (context) => page));
  }

  void navigatePushReplacementTo(Widget page) {
    Navigator.of(this).pushReplacement(MaterialPageRoute(builder: (context) => page));
  }

  void navigateBack() {
    Navigator.of(this).pop();
  }

  void animateToAsPush({
    required Widget page,
    AnimationType animationType = AnimationType.slideUp,
    Duration duration = const Duration(milliseconds: 300),
    double rotateNumber = 1,
  }) {
    switch (animationType) {
      case AnimationType.slideToLeft:
        _AnimatedNavigator._slideToLeft(context: this, page: page, duration: duration);
        break;
      case AnimationType.slideToRight:
        _AnimatedNavigator._slideToRight(context: this, page: page, duration: duration);
        break;
      case AnimationType.slideUp:
        _AnimatedNavigator._slideUp(context: this, page: page, duration: duration);
        break;
      case AnimationType.slideDown:
        _AnimatedNavigator._slideDown(context: this, page: page, duration: duration);
        break;
      case AnimationType.scale:
        _AnimatedNavigator._scale(context: this, page: page, duration: duration);
        break;
      case AnimationType.rotate:
        _AnimatedNavigator._rotate(context: this, page: page, duration: duration);
        break;
      case AnimationType.open:
        _AnimatedNavigator._open(context: this, page: page, duration: duration);
        break;
      case AnimationType.fade:
        _AnimatedNavigator._fade(context: this, page: page, duration: duration);
      case AnimationType.openAndeRotate:
        _AnimatedNavigator._openAndeRotate(context: this, page: page, duration: duration);
      case AnimationType.scaleAndRotate:
        _AnimatedNavigator._scaleAndRotate(context: this, page: page, duration: duration, rotateNumber: rotateNumber);

        break;
    }
  }

  void animateToAsPushReplacement({
    required Widget page,
    AnimationType animationType = AnimationType.open,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    switch (animationType) {
      case AnimationType.slideToLeft:
        _AnimatedNavigator._slideToLeft(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.slideToRight:
        _AnimatedNavigator._slideToRight(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.slideUp:
        _AnimatedNavigator._slideUp(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.slideDown:
        _AnimatedNavigator._slideDown(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.scale:
        _AnimatedNavigator._scale(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.rotate:
        _AnimatedNavigator._rotate(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.open:
        _AnimatedNavigator._open(context: this, page: page, naviType: NaviType.replacement, duration: duration);
        break;
      case AnimationType.openAndeRotate:
        _AnimatedNavigator._openAndeRotate(
            context: this, page: page, naviType: NaviType.replacement, duration: duration);
      case AnimationType.fade:
        _AnimatedNavigator._fade(context: this, page: page, naviType: NaviType.replacement, duration: duration);
      case AnimationType.scaleAndRotate:
        _AnimatedNavigator._scaleAndRotate(
            context: this, page: page, naviType: NaviType.replacement, duration: duration, rotateNumber: 1);
        break;
    }
  }

  void pop() {
    Navigator.of(this).pop();
  }
}

enum NaviType { push, replacement }

enum AnimationType { slideToLeft, slideToRight, slideUp, slideDown, scale, rotate, open, fade, openAndeRotate, scaleAndRotate }	

class _AnimatedNavigator {
  static void _slideToLeft({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        const begin = Offset(1, 0);
        const end = Offset(0, 0);
        final tween = Tween(begin: begin, end: end);
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _slideToRight({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        const begin = Offset(-1, 0);
        const end = Offset(0, 0);
        final tween = Tween(begin: begin, end: end);
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _slideUp({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        const begin = Offset(0, 1);
        const end = Offset(0, 0);
        final tween = Tween(begin: begin, end: end);
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _slideDown({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        const begin = Offset(0, -1);
        const end = Offset(0, 0);
        final tween = Tween(begin: begin, end: end);
        return SlideTransition(position: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _scale({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        final tween = Tween(begin: 0.0, end: 1.0);
        return ScaleTransition(scale: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _rotate({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        final rotateTween = Tween(begin: 0.0, end: 1.0);
        return RotationTransition(turns: animation.drive(rotateTween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _fade({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        final tween = Tween(begin: 0.0, end: 1.0);
        return FadeTransition(opacity: animation.drive(tween), child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _open({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        return SizeTransition(sizeFactor: animation, child: child);
      },
    );
    _navigate(context, route, naviType);
  }

  static void _openAndeRotate({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        final rotateTween = Tween(begin: 0.0, end: 1.0);
        final sizeTween = Tween(begin: 0.0, end: 1.0);
        return RotationTransition(
          turns: animation.drive(rotateTween),
          child: SizeTransition(sizeFactor: animation.drive(sizeTween), child: child),
        );
      },
    );
    _navigate(context, route, naviType);
  }

  static void _scaleAndRotate({
    required BuildContext context,
    required Widget page,
    NaviType naviType = NaviType.push,
    Duration duration = const Duration(milliseconds: 300),
    required double rotateNumber ,
  }) {
    final route = PageRouteBuilder(
      pageBuilder: (context, animation, _) => page,
      transitionDuration: duration,
      transitionsBuilder: (context, animation, _, child) {
        final rotateTween = Tween(begin: 0.0, end: rotateNumber);
        final scaleTween = Tween(begin: 0.0, end: 1.0);
        return RotationTransition(
          turns: animation.drive(rotateTween),
          child: ScaleTransition(scale: animation.drive(scaleTween), child: child),
        );
      },
    );
    _navigate(context, route, naviType);
  }

  static void _navigate(BuildContext context, PageRouteBuilder route, NaviType naviType) {
    if (naviType == NaviType.push) {
      Navigator.of(context).push(route);
    } else {
      Navigator.of(context).pushReplacement(route);
    }
  }
}
