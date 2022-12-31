// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ManagePage extends StatefulWidget {
  const ManagePage({super.key});

  @override
  _ManagePagesstate createState() => _ManagePagesstate();
}

class _ManagePagesstate extends State<ManagePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('관리')),
    );
  }
}
