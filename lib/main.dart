import 'package:bloc_base/config/routes/routes_handler.dart';
import 'package:bloc_base/core/another_page/another_page.dart';
import 'package:bloc_base/core/counter/counter.dart';
import 'package:bloc_base/modules/counter/counter_cubit.dart';
import 'package:bloc_base/widgets/error/2_404_error.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:routemaster/routemaster.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);

  final routes = RouteMap(
    onUnknownRoute: (value){
      return MaterialPage(child: Error404Screen());
    },
  routes: {
    '/': (_) => MaterialPage(
          child: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => CounterCubit(),
              ),
            ],
            child: Counter(),
          ),
        ),
    '/another': (_) => MaterialPage(child: AnotherPage()),
  }
);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     routerDelegate: RoutemasterDelegate(routesBuilder: (context) => routes),
        routeInformationParser: const RoutemasterParser(),
    );
  }
}
