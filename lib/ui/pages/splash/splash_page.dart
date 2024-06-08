import 'package:flutter/services.dart';
import 'package:weather_bloc/export.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  late final SplashViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = SplashViewModel();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersiveSticky,
      overlays: [],
    ).then(
      (_) => _goHome(),
    );
  }

  Future<void> _goHome() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute<HomePage>(
          builder: (context) {
            return const HomePage();
          },
        ),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: SystemUiOverlay.values,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.backgroundColor,
            AppColors.lightBackgroundColor,
          ],
        ),
      ),
      child: SafeArea(
        child: Center(
          child: Image.asset('assets/gif_circular_splash.gif'),
        ),
      ),
    );
  }
}
