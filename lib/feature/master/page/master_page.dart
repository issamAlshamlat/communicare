import 'package:communicare/feature/home/page/home_page.dart';
import 'package:communicare/feature/home/page/subcategory_page.dart';
import 'package:communicare/feature/master/widget/search_bar_widget.dart';
import 'package:communicare/feature/master/widget/side_bar_widget.dart';
import 'package:communicare/feature/recent/page/recent_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/side_bar_bloc.dart';

class MasterPage extends StatefulWidget {
  @override
  State<MasterPage> createState() => _MasterPageState();
}

class _MasterPageState extends State<MasterPage> {
  final sideBarBloc = SideBarBloc();
  // void _rebuildPageForSubcategory() {
  //   sideBarIndex = 5;
  //   buildChildBasedOnIndex(sideBarIndex);
  // }

  Widget buildChildBasedOnState(SideBarState state) {
    print(state);
    if (state is HomeState) {
      return HomePage(
        onAudioFinished: () {
          // setState(() {
          // sideBarIndex = 5;
          // });
        },
      );
    }
    // else if (state is RecentState) {
    //   return RecentPage();
    // } else if (state is PatientLogState) {
    //   return Container(
    //     color: Colors.amberAccent,
    //   );
    // } else if (state is SettingsState) {
    // } else {
    //   return SubcategoryPage(itemsList: []);
    // }

    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final sideBarBloc = SideBarBloc();

    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocProvider(
        create: (context) => sideBarBloc,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBarWidget(),
            BlocBuilder<SideBarBloc, SideBarState>(
              bloc: sideBarBloc,
              builder: (context, state) {
                return Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SideBarWidget(),
                      buildChildBasedOnState(sideBarBloc.state),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
