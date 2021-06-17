import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';

void main() {
  group('pen cubit tests', () {
    late PenCubit penCubit;
    setUp(() {
      penCubit = PenCubit();
    });
    test('Testing cubit with initial test', () {
      expect(
          penCubit.state,
          PenState(
              penColor: Colors.black,
              penThickness: 1.0,
              penType: PenType.NormalPen));
    });
    blocTest<PenCubit, PenState>(
        'the PenCubit should emit a PenState with color supplied in the parameter',
        build: () => penCubit,
        act: (cubit) => cubit.changeColor(Colors.orange),
        expect: () => [PenState(penColor: Colors.orange)]);

    blocTest<PenCubit, PenState>(
        'the PenCubit should emit a PenState with the slider value supplied in the parameter',
        build: () => penCubit,
        act: (cubit) => cubit.changeSliderValue(5.0),
        expect: () => [PenState(penThickness: 5.0)]);

    blocTest<PenCubit, PenState>(
        'the PenCubit should emit a PenState with the pen type supplied in the parameter',
        build: () => penCubit,
        act: (cubit) => cubit.changePenType(PenType.NormalPen),
        expect: () => [PenState(penType: PenType.NormalPen)]);

    tearDown(() {
      penCubit.close();
    });
  });
}
