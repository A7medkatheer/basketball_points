
import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      listener: (context, state) {
        // if (state is CounterAIncrementState) {
        //   teamAPoint = BlocProvider.of<CounterCubit>(context).teamAPoint;
        // } else if (state is CounterBIncrementState){
        //   teamBPoint = BlocProvider.of<CounterCubit>(context).teamBPoint;
        // }else if (state is CounterResetState){
        //   teamAPoint = BlocProvider.of<CounterCubit>(context).teamAPoint;
        //   teamBPoint = BlocProvider.of<CounterCubit>(context).teamBPoint;
        // }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Points Counter',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              const Spacer(flex: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        "Team A",
                        style: TextStyle(
                          fontSize: 42,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamAPoint}",
                        style: const TextStyle(
                          fontSize: 150,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Button(
                          addpoints: 'Add 1 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 1,
                              team: "A",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                      Button(
                          addpoints: 'Add 2 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 2,
                              team: "A",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                      Button(
                          addpoints: 'Add 3 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 3,
                              team: "A",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(
                    children: [
                      const Text(
                        "Team B",
                        style: TextStyle(
                          fontSize: 42,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${BlocProvider.of<CounterCubit>(context).teamBPoint}",
                        style: const TextStyle(
                          fontSize: 150,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                      Button(
                          addpoints: 'Add 1 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 1,
                              team: "B",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                      Button(
                          addpoints: 'Add 2 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 2,
                              team: "B",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                      Button(
                          addpoints: 'Add 3 points',
                          onPressed: () {
                            BlocProvider.of<CounterCubit>(context)
                                .teamIncrement(
                              buttonNumber: 3,
                              team: "B",
                            );
                          }),
                      const SizedBox(
                        height: 24,
                      ),
                    ],
                  ),
                ],
              ),
              const Spacer(flex: 2),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(150, 60),
                  backgroundColor: Colors.orange,
                ),
                onPressed: () {
                  BlocProvider.of<CounterCubit>(context).reset();
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              const Spacer(flex: 1),
            ],
          ),
        );
      },
    );
  }
}

// ignore: must_be_immutable
class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.addpoints,
    this.onPressed,
  });
  final String addpoints;
  final void Function()? onPressed;
  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(150, 60),
        backgroundColor: Colors.orange,
      ),
      onPressed: onPressed,
      //
      // },
      child: Text(
        addpoints,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
        ),
      ),
    );
  }
}
