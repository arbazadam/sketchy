part of 'pen_cubit.dart';

class PenState extends Equatable {
  PenState(
      {this.penColor = Colors.black,
      this.penThickness = 4.0,
      this.penType = PenType.NormalPen});

  final penThickness;
  final penType;
  final penColor;
  @override
  List<Object> get props => [];

  PenState copyWith({penThickness, penType, penColor}) {
    return PenState(
        penColor: penColor ?? this.penColor,
        penThickness: penThickness ?? this.penThickness,
        penType: penType ?? this.penType);
  }
}

enum PenType { NormalPen, AbNormalPen }
