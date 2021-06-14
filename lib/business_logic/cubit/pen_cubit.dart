import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'pen_state.dart';

class PenCubit extends Cubit<PenState> {
  PenCubit() : super(PenState());

  void changeSliderValue(double sliderVal) {
    print('changeSlider called');
    print(state.penType);
    emit(state.copyWith(penThickness: sliderVal));
    print(state);
  }

  void changeColor(Color color) {
    emit(state.copyWith(penColor: color));
  }
}
