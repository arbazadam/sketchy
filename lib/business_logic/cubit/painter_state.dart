part of 'painter_cubit.dart';

class PainterState {
  const PainterState({this.offset = const []});

  final List<Offset> offset;

  PainterState copyWith({newOffset}) {
    return PainterState(offset: newOffset ?? offset);
  }

  // TODO: implement props

}
