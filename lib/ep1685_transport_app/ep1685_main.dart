import 'package:flutter/material.dart';

import 'views/transport_start_page.dart';

void main() => runApp(const TransportApp());

class TransportApp extends StatelessWidget {
  const TransportApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TransportStartPage(),
    );
  }
}
