import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  // in init state making a code by single solid principle
  @override
  void initState() {
    super.initState();
    _initSlidingAnimation();
    _navigateToHome();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _initSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 6),
      end: Offset.zero,
    ).animate(_animationController);
    _animationController.forward();
  }

  void _navigateToHome() {
    Future.delayed(const Duration(seconds: 4), () {
      GoRouter.of(context).pushReplacement('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(height: 10),
        AnimatedBuilder(
          animation: _slidingAnimation,
          builder: (context, child) => Transform.translate(
            offset: _slidingAnimation.value,
            child: SlideTransition(
              position: _slidingAnimation,
              child: Text(
                "Read Books For Free",
                style: Theme.of(context).textTheme.titleMedium,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
