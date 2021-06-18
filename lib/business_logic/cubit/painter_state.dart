part of 'painter_cubit.dart';

class PainterState {
  PainterState({this.tap = false});

  final tap;

  PainterState copyWith({tap}) {
    return PainterState(tap: tap ?? this.tap);
  }
}
