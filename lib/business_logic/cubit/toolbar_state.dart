part of 'toolbar_cubit.dart';

class ToolbarState extends Equatable {
  ToolbarState({this.penIndex});

  final penIndex;

  ToolbarState copyWith({penIndex}) {
    return ToolbarState(
      penIndex: penIndex ?? this.penIndex,
    );
  }

  @override
  List<Object?> get props => [penIndex];
}

enum PenType { NormalPen, AbNormalPen }
