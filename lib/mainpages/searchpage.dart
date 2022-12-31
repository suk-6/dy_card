// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPagesstate createState() => _SearchPagesstate();
}

class _SearchPagesstate extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(child: Text('조회')),
    );
  }
}
