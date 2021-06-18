import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'painter_state.dart';

class PainterCubit extends Cubit<PainterState> {
  PainterCubit() : super(PainterState());

  void drawALine(List<Offset> offset) {
    emit(state.copyWith());
  }

  void emitState(final clicked) {
    emit(state.copyWith(tap: clicked));
  }
}
