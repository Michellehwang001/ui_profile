import 'package:flutter/material.dart';
import 'package:ui_profile/components/profile_buttons.dart';
import 'package:ui_profile/components/profile_count_info.dart';
import 'package:ui_profile/components/profile_drawer.dart';
import 'package:ui_profile/components/profile_header.dart';
import 'package:ui_profile/components/profile_tab.dart';
import 'package:ui_profile/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const ProfileDrawer(),
      appBar: _buildProfileAppBar(),
      body: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          ProfileHeader(),
          SizedBox(
            height: 20,
          ),
          ProfileCountInfo(),
          SizedBox(
            height: 20,
          ),
          ProfileButtons(),
          Expanded(child: ProfileTab())
        ],
      ),
    );
  }

  AppBar _buildProfileAppBar() {
    return AppBar(
      elevation: 1,
      leading: const Icon(Icons.arrow_back_ios),
      title: const Text('Profile'),
      centerTitle: true,
    );
  }
}
