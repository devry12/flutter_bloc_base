import 'package:bloc_base/config/routes/routes_handler.dart';
import 'package:bloc_base/modules/counter/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Counter"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text(
                    state.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              heroTag: "increment",
              onPressed: () {
                context.read<CounterCubit>().increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            const SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              heroTag: "move",
              onPressed: () {
                Navigator.pushNamed(context, Routes.ANOTHERPAGE);
              },
              tooltip: 'Increment',
              child: const Icon(Icons.arrow_right_alt_outlined),
            ),
          ],
        ));
  }
}
