import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'painter_state.dart';

class PainterCubit extends Cubit<PainterState> {
  PainterCubit() : super(PainterState());

  void drawALine(List<Offset> offset) {
    emit(state.copyWith(newOffset: offset));
  }
}
