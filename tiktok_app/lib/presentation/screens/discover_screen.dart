import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_app/presentation/providers/discover_provider.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final discoveryProvider = context.watch<DiscoverProvider>();

    return Scaffold(
      body:
          discoveryProvider.initialLoading
              ? const Center(child: CircularProgressIndicator())
              : const Placeholder(),
    );
  }
}
