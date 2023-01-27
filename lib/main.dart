import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_bloc/component/network/remote/dio_helper.dart';
import 'package:weather_bloc/layout/weather_cubit.dart';
import 'package:weather_bloc/screens/searchCity.dart';

import 'component/theme/theme.dart';
import 'layout/weather_state.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context)=>WeatherCubit()),
      ],
      child: BlocConsumer<WeatherCubit,WeatherState>(

        listener: (context,state){},
        builder: (context,state){
          return MaterialApp(
            title: 'Weather Today',
            debugShowCheckedModeBanner: false,
            theme: dark,
            home:  SearchCity(),
          ) ;
        },
      ),
    );
  }
}
