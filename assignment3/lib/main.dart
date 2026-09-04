import 'package:flutter/material.dart';
import 'profile_card.dart';
import 'profile_stat.dart';
import 'app_colors.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Card',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        useMaterial3: true,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ProfileCard(
          name: 'Raj Koli',
          role: 'Flutter Developer',
          stats: const [
            ProfileStat(label: 'Posts', value: '128'),
            ProfileStat(label: 'Followers', value: '9.4k'),
            ProfileStat(label: 'Following', value: '210'),
          ],
        ),
      ),
    );
  }
}
