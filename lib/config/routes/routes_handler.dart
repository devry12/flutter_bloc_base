import 'package:bloc_base/core/another_page/another_page.dart';
import 'package:bloc_base/core/counter/counter.dart';
import 'package:bloc_base/modules/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'routes_config.dart';

class RoutesHandler {
  Route<dynamic> generateRoute(RouteSettings routes) {
    switch (routes.name) {
      case Routes.HOME:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => CounterCubit(),
                    ),
                  ],
                  child: Counter(),
                ));
      case Routes.ANOTHERPAGE:
        return MaterialPageRoute(builder: (context) => const AnotherPage());
      default:
        return MaterialPageRoute(
            builder: (context) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => CounterCubit(),
                    ),
                  ],
                  child: Counter(),
                ));
    }
  }
}
