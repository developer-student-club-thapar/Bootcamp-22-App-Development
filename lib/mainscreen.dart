import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workshop_app/camerascreen.dart';
import 'package:workshop_app/chatscreen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color(0xff0CA996),
          child: Image.asset('assets/ic_baseline-message.png'),
        ),
        backgroundColor: Color(0xff0F1c24),
        appBar: myAppBar(),
        body: const TabBarView(
          children: [
            CameraScreen(),
            ChatScreen(),
            Center(
              child: Text('Dummy'),
            ),
            Center(
              child: Text('Dummy'),
            ),
          ],
        ),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: false,
      backgroundColor: Color(0xff232D36),
      title: const Text(
        'Whatsapp',
        style: TextStyle(
            color: Color(0xff9DA5AC),
            fontSize: 20,
            fontWeight: FontWeight.w700),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.ellipsisVertical),
        ),
      ],
      bottom: TabBar(
        indicatorSize: TabBarIndicatorSize.label,
        isScrollable: true,
        unselectedLabelColor: Color(0xff9DA5AC),
        labelColor: Color(0xff0CA996),
        indicatorColor: Color(0xff0CA996),
        indicatorWeight: 3,
        labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        tabs: [
          Container(
            width: 20,
            child: Tab(
              icon: Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
          ),
          Container(
            width: 80,
            child: Tab(
              text: 'Chats',
            ),
          ),
          Container(
            width: 80,
            child: Tab(
              text: 'Status',
            ),
          ),
          Container(
            width: 80,
            child: Tab(
              text: 'Calls',
            ),
          ),
        ],
      ),
    );
  }
}
