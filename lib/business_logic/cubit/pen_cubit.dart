import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'pen_state.dart';

class PenCubit extends Cubit<PenState> {
  PenCubit() : super(PenState());

  void changeSliderValue(double sliderVal) {
    emit(state.copyWith(
        penThickness: sliderVal,
        penColor: state.penColor,
        penType: state.penType));
  }

  void changeColor(Color color) {
    emit(state.copyWith(
        penColor: color,
        penThickness: state.penThickness,
        penType: state.penType));
  }

  void changePenType(PenType penType) {
    emit(state.copyWith(
        penColor: state.penColor,
        penThickness: state.penThickness,
        penType: penType));
  }
}
