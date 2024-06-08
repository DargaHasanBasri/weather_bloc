import 'package:weather_bloc/export.dart';
import 'package:weather_bloc/ui/pages/home/components/weather_todays.dart';
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
      body: Container(
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
        child: buildBody(),
      ),
    );
  }

  Widget buildBody() {
    return SafeArea(
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
              fontFamily: 'Poppins-Medium',
            ),
          ),
          Text(
            'Precipitations',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 24,
              fontFamily: 'Poppins-Regular',
            ),
          ),
          minMaxDegreeRowText(
            '24',
            '18',
          ),
          Expanded(
            child: Image.asset(
              'assets/img_home.png',
            ),
          ),
          const WeatherTodays(),
        ],
      ),
    );
  }

  Widget minMaxDegreeRowText(String maxDegree, String minDegree) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Max:$maxDegree°',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 24,
            fontFamily: 'Poppins-Regular',
          ),
        ),
        const SizedBox(width: 30),
        Text(
          'Min:$minDegree°',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 24,
            fontFamily: 'Poppins-Regular',
          ),
        ),
      ],
    );
  }
}
