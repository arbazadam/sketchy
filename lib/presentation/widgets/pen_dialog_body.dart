import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sketchy/business_logic/cubit/pen_cubit.dart';

import '../../constants/data.dart';

class PenDialog extends StatelessWidget {
  const PenDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Pen Type',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<PenCubit>().changePenType(PenType.NormalPen);
                  },
                  child: BlocBuilder<PenCubit, PenState>(
                    builder: (context, state) {
                      return CircleAvatar(
                        radius: 20,
                        backgroundColor: state.penType == PenType.NormalPen
                            ? Color.fromRGBO(49, 218, 220, 1)
                            : Color.fromRGBO(242, 242, 242, 1),
                        child: FaIcon(
                          FontAwesomeIcons.pencilAlt,
                          color: Colors.black,
                          size: 23.0,
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PenCubit>().changePenType(PenType.AbNormalPen);
                  },
                  child: BlocBuilder<PenCubit, PenState>(
                    builder: (context, state) {
                      return CircleAvatar(
                        radius: 20,
                        backgroundColor: state.penType == PenType.AbNormalPen
                            ? Color.fromRGBO(49, 218, 220, 1)
                            : Color.fromRGBO(242, 242, 242, 1),
                        child: FaIcon(
                          FontAwesomeIcons.pen,
                          color: Colors.black,
                          size: 23.0,
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text('Thickness'),

            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BlocBuilder<PenCubit, PenState>(
                  builder: (context, state) {
                    return Slider(
                      label: state.penThickness.toStringAsFixed(1).toString(),
                      activeColor: Color.fromRGBO(0, 255, 255, 1),
                      min: 0,
                      max: 20,
                      divisions: 200,
                      value: state.penThickness,
                      onChanged: (value) {
                        BlocProvider.of<PenCubit>(context)
                            .changeSliderValue(value);
                      },
                    );
                  },
                ),
                BlocBuilder<PenCubit, PenState>(
                  builder: (context, state) {
                    return Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: state.penColor),
                      height: state.penThickness < 2 ? 2 : state.penThickness,
                      width: state.penThickness < 2 ? 2 : state.penThickness,
                    );
                  },
                )
              ],
            ),
            //This is for slider..
            Text('Color'),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                ...colors.map((e) => Container(
                      child: GestureDetector(
                        onTap: () {
                          BlocProvider.of<PenCubit>(context).changeColor(e);
                        },
                      ),
                      margin:
                          e != colors.first ? EdgeInsets.only(left: 8) : null,
                      height: 22,
                      width: 22,
                      decoration:
                          BoxDecoration(color: e, shape: BoxShape.circle),
                    )),
                SizedBox(
                  width: 25,
                ),
                Container(
                  height: 22,
                  width: 22,
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
