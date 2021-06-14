import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';
import 'package:sketchy/presentation/widgets/pen_dialog_body.dart';

import 'bloc_observer.dart';
import 'presentation/pages/parent_screen.dart';

void main() {
  runApp(MyApp());
  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PenCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          sliderTheme: SliderThemeData(
              inactiveTrackColor: Colors.black87,
              trackHeight: 3.0,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5.0)),
          primarySwatch: Colors.blue,
        ),
        home: ParentWidget(),
      ),
    );
  }
}
