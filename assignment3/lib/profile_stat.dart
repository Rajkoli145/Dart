import 'package:flutter/material.dart';
import 'app_colors.dart';

class ProfileStat {
  final String label;
  final String value;

  const ProfileStat({required this.label, required this.value});
}

class ProfileStatColumn extends StatelessWidget {
  final ProfileStat stat;

  const ProfileStatColumn({super.key, required this.stat});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          stat.value,
          style: const TextStyle(
            color: AppColors.tuscanSun,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          stat.label,
          style: const TextStyle(color: AppColors.textSecondary, fontSize: 13),
        ),
      ],
    );
  }
}
