part of 'pen_cubit.dart';

class PenState extends Equatable {
  PenState(
      {this.penColor = Colors.black,
      this.penThickness = 1.0,
      this.penType = PenType.NormalPen});

  final penThickness;
  final penType;
  final penColor;

  PenState copyWith({penThickness, penType, penColor}) {
    return PenState(
        penColor: penColor ?? this.penColor,
        penThickness: penThickness ?? this.penThickness,
        penType: penType ?? this.penType);
  }

  @override
  List<Object?> get props => [penColor, penType, penThickness];
}

enum PenType { NormalPen, AbNormalPen }
