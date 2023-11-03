import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:uhcdesa/configs/colors.dart';
import 'package:uhcdesa/presentations/widgets/uhc_card.dart';

class AdminDashboardScreen extends ConsumerStatefulWidget {
  const AdminDashboardScreen({super.key});

  @override
  ConsumerState<AdminDashboardScreen> createState() =>
      _AdminDashboardScreenState();
}

class _AdminDashboardScreenState extends ConsumerState<AdminDashboardScreen> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColors.secondary,
      appBar: AppBar(
        backgroundColor: AppColors.secondary,
        title: const Text(
          'D A S H B O A R D ',
          style: TextStyle(color: AppColors.primary),
        ),
        actions: const [
          Icon(
            Icons.notifications,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.person,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: AnimateList(
              interval: 400.ms,
              effects: [FadeEffect()],
              children: [
                SizedBox(
                  height: (width > 950) ? height / 5 : height / 3,
                  width: double.infinity,
                  child: GridView.count(
                    crossAxisCount: (width > 950) ? 4 : 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 20,
                    childAspectRatio: 2 / 0.8,
                    children: [
                      UhcCard(
                        iconData: FontAwesomeIcons.peopleGroup,
                        label: 'Jumlah Penduduk',
                        value: '174150',
                      ),
                      UhcCard(
                        iconData: FontAwesomeIcons.house,
                        label: 'Jumlah Kecamatan',
                        value: '13',
                      ),
                      UhcCard(
                        iconData: FontAwesomeIcons.houseUser,
                        label: 'Jumlah Desa',
                        value: '161',
                      ),
                      UhcCard(
                        iconData: FontAwesomeIcons.heartPulse,
                        label: 'Cakupan UHC',
                        value: '101.66 %',
                      ),
                    ],
                  ),
                ),
                ToggleSwitch(
                  minWidth: 150,
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: const ['Segmen', 'Kecamatan', 'Desa'],
                  onToggle: (index) {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
