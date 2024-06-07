import 'package:weather_bloc/export.dart';
import 'package:weather_bloc/utils/app_colors.dart';

class WeatherTodays extends StatelessWidget {
  const WeatherTodays({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            AppColors.todayWeatherBgColor,
            AppColors.lightTodayWeatherBgColor,
          ],
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
              vertical: 12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Today',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
                Text(
                  'July, 21',
                  style: TextStyle(
                    color: AppColors.whiteColor,
                    fontSize: 20,
                    fontFamily: 'Poppins-SemiBold',
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 2,
            decoration: BoxDecoration(
              color: AppColors.lightBackgroundColor,
            ),
          ),
          const SizedBox(height: 30),
          /// To-do: Başka çözüm bul
          SizedBox(
            height: 110,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 40),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: 10,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Expanded(
                      child: Text(
                        '19°C',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Image.asset('assets/img_rainy_night.png'),
                    ),
                    Expanded(
                      child: Text(
                        '15:00',
                        style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 20,
                          fontFamily: 'Poppins-Medium',
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 30);
              },
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
