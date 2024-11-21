import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:todo_app_bloc/core/base_view_bloc.dart';
import 'package:todo_app_bloc/gen/assets.gen.dart';
import 'package:todo_app_bloc/resources/app_colors.dart';
import 'package:todo_app_bloc/resources/app_shadow.dart';
import 'package:todo_app_bloc/screens/features_locator.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_bloc.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_event.dart';
import 'package:todo_app_bloc/screens/main/bloc/main_state.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late MainBloc bloc;

  final homeIcons = [
    Assets.icons.icHome,
    Assets.icons.icCalendar,
    Assets.icons.icNotification,
    Assets.icons.icSetting,
  ];

  @override
  void initState() {
    super.initState();
    bloc = featuresLocator.get<MainBloc>();
  }

  @override
  Widget build(BuildContext context) {
    return BaseViewBloc(
      bloc: bloc,
      body: Container(),
      bottomNavigatorBar: Container(
        decoration: BoxDecoration(
          color: AppColors.hEDEAEA,
          boxShadow: const [AppShadow.boxShadow],
        ),
        child: BlocSelector<MainBloc, MainState, int>(
          selector: (state) => state.index,
          builder: (context, indexSelected) => Row(
            children: List.generate(
              homeIcons.length,
              (index) => Expanded(
                child: itemBottomNavigatorBar(
                  onTap: () => bloc.add(MainChangeIndexPressed(index: index)),
                  index: index,
                  isSelected: indexSelected == index,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget itemBottomNavigatorBar({
    required VoidCallback onTap,
    required int index,
    required bool isSelected,
  }) {
    return Material(
      child: InkWell(
        borderRadius: BorderRadius.circular(8.0),
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AnimatedContainer(
              height: 4.0,
              margin: const EdgeInsets.symmetric(horizontal: 14.0),
              duration: const Duration(milliseconds: 1000),
              decoration: BoxDecoration(
              color:  isSelected ? AppColors.hDFBD43 : Colors.transparent,
              borderRadius: BorderRadius.circular(5.0)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SvgPicture.asset(
                homeIcons[index],
                width: 30,
                height: 30,
                // ignore: deprecated_member_use
                color: isSelected ? AppColors.hDFBD43 : AppColors.h000000,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
