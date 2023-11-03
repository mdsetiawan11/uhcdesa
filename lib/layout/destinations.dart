import 'package:flutter/material.dart';

class Destination {
  const Destination(this.icon, this.label);
  final IconData icon;
  final String label;
}

const List<Destination> adminDestinations = <Destination>[
  Destination(Icons.dashboard, 'Dashboard'),
  Destination(Icons.stacked_bar_chart, 'UHC'),
  Destination(Icons.pending, 'Usulan'),
  Destination(Icons.account_box, 'Akun'),
];
