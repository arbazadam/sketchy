import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sketchy/business_logic/cubit/toolbar_cubit.dart';
import 'package:sketchy/constants/data.dart';

class SideToolBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), boxShadow: [
        BoxShadow(
          offset: const Offset(0.4, 0.0),
          blurRadius: 0.2,
          spreadRadius: 0.0,
        ), //BoxShadow
        BoxShadow(
          color: Colors.white,
          //offset: const Offset(0.2, 0.2),
          blurRadius: 0.0,
          spreadRadius: 0.0,
        ), //B
      ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(padding: EdgeInsets.all(10), child: Icon(Icons.volume_up)),
          SizedBox(
            child: Container(
              height: .8,
              width: 45,
              color: Colors.black,
            ),
          ),
          ...List.generate(
              iconsList.length,
              (index) => BlocBuilder<ToolbarCubit, ToolbarState>(
                      builder: (context, state) {
                    return IconButton(
                        onPressed: () {
                          context.read<ToolbarCubit>().changeIndex(index);
                        },
                        icon: Icon(
                          iconsList[index],
                          color: state.penIndex == index
                              ? Color(0xff00ffff)
                              : Colors.black,
                        ));
                  }))
        ],
      ),
    );
  }
}
