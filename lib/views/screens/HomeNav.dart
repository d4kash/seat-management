import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seat_management/views/screens/arrange_seat.dart';
import 'package:seat_management/views/screens/room_list.dart';
import 'package:seat_management/views/screens/set_room_details.dart';
import 'package:side_navigation/side_navigation.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  List<Widget> views = [
    Center(
      child: RoomDetails(),
    ),
    Center(
      child: ArrangeSeat(),
    ),
    const Center(
      child: ClassList(),
    ),
  ];
  List<SideNavigationBarItem> navList = const [
    SideNavigationBarItem(
      icon: Icons.dashboard,
      label: 'Dashboard',
    ),
    SideNavigationBarItem(
      icon: Icons.class_outlined,
      label: 'Room List',
    ),
    SideNavigationBarItem(
      icon: Icons.settings,
      label: 'Create Room ',
    ),
  ];
  RxInt selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => Row(
            children: [
              SideNavigationBar(
                header: const SideNavigationBarHeader(
                    image: CircleAvatar(
                      child: Icon(Icons.account_balance),
                    ),
                    title: Text('Exam Departement'),
                    subtitle: Text('Seat Arrangement')),
                footer: SideNavigationBarFooter(
                    label: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('Daksh'),
                    Icon(
                      Icons.favorite_outline_rounded,
                      color: Colors.red,
                    )
                  ],
                )),
                selectedIndex: selectedIndex.value,
                items: navList,
                onTap: (index) {
                  // setState(() {
                  selectedIndex.value = index;
                  // });
                },
              ),
              Expanded(
                child: views.elementAt(selectedIndex.value),
              )
            ],
          )),
    );
  }
}
