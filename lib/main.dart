import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/painter_cubit.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';
import 'package:sketchy/constants/custom_track_shape.dart';
import 'package:sketchy/presentation/widgets/pen_dialog_body.dart';

import 'bloc_observer.dart';
import 'business_logic/cubit/toolbar_cubit.dart';
import 'presentation/pages/parent_screen.dart';

void main() {
  runApp(MyApp());
  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => PenCubit()),
        BlocProvider(create: (context) => ToolbarCubit()),
        BlocProvider(create: (context) => PainterCubit())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          sliderTheme: SliderThemeData(
              valueIndicatorColor: Colors.transparent,
              valueIndicatorTextStyle: TextStyle(color: Colors.black),
              trackShape: CustomTrackShape(),
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
