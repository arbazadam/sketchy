part of 'painter_cubit.dart';

class NewState {
  const NewState({this.offset = const []});

  final List<Offset> offset;

  NewState copyWith({newOffset}) {
    return NewState(offset: newOffset ?? offset);
  }

  // TODO: implement props

}
