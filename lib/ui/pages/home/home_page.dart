import 'package:weather_bloc/export.dart';
import 'package:weather_bloc/utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseStatefulState<HomePage> {
  late final HomeViewModel vm;

  @override
  void initState() {
    super.initState();
    vm = HomeViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 2,
              child: Image.asset(
                'assets/img_rainy_morning.png',
              ),
            ),
            Text(
              '19°',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 64,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
