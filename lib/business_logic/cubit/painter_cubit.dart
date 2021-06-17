import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

part 'painter_state.dart';

class PainterCubit extends Cubit<NewState> {
  PainterCubit() : super(NewState());

  void drawALine(List<Offset> offset) {
    emit(state.copyWith(newOffset: offset));
  }
}
