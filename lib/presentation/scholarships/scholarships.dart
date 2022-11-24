import 'package:app/business/bloc/authentication_bloc.dart';
import 'package:app/core/app_export.dart';
import 'package:app/core/utils/image_constant.dart';
import 'package:app/core/utils/size_utils.dart';
import 'package:app/presentation/scholarships/bloc/scholarship_bloc.dart';
import 'package:app/presentation/scholarships/widgets/card.dart';
import 'package:app/widgets/app_bar/appbar_image.dart';
import 'package:app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class Scholarship extends StatefulWidget {
  const Scholarship({Key? key}) : super(key: key);

  @override
  State<Scholarship> createState() => _ScholarshipState();
}

class _ScholarshipState extends State<Scholarship> {
  @override
  void initState() {
    ScholarshipBloc b = ScholarshipBloc();
    b.add(FecthDataEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(70.00),
        leadingWidth: 45,
        leading: AppbarImage(
            height: getVerticalSize(5.00),
            width: getHorizontalSize(20.00),
            // imagePath: ImageConstant.scholarships,
            margin: getMargin(left: 25, top: 19, bottom: 16),
            onTap: () {}),
        actions: [
          // Icon(Icons.arrow_back,)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: BlocBuilder<ScholarshipBloc, ScholarshipState>(
          builder: (context, state) {
            if (state is HomeDataLoadedState) {
              return Column(
                children: state.data
                    .map((e) => InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.details, arguments: e);
                      },
                      child: CardWidget(title: e.title!, type: e.type!)))
                    .toList(),
              );
            } else if (state is HomeLoadingState) {
              return CircularProgressIndicator();
            }

            return Container();
          },
        ),
      ),
    );
  }
}
