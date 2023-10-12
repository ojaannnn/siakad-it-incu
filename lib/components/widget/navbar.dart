import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:siakad/module/dashboard.dart';
import 'package:siakad/module/profile_page.dart';
import 'package:siakad/module/rekap_pembayaran_page.dart';
import 'package:siakad/module/schedule_page.dart';
import 'package:siakad/utils/app_themes.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/carbon.dart';
import 'package:iconify_flutter/icons/fluent_mdl2.dart';
import 'package:iconify_flutter/icons/bi.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

int _currentIndex = 0;

class _NavBarState extends State<NavBar> {
  void changePage(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final pages = [DashboardPage(), JadwalPage(), RekapPembayaranPage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      resizeToAvoidBottomInset: true,
      bottomNavigationBar:
          DotNavigationBar(backgroundColor: Styles.primaryBlue, selectedItemColor: Colors.white, currentIndex: _currentIndex, onTap: changePage, items: [
        DotNavigationBarItem(
            icon: SizedBox(
          child: Iconify(Carbon.home),
        )),
        DotNavigationBarItem(
            icon: SizedBox(
          child: Iconify(FluentMdl2.date_time),
        )),
        DotNavigationBarItem(
            icon: SizedBox(
          child: Iconify(FluentMdl2.money),
        )),
        DotNavigationBarItem(
            icon: SizedBox(
          child: Iconify(Bi.person),
        ))
      ]),
    );
  }
}
