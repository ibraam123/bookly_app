import 'package:bookly_app/features/home/preseantaion/views/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/preseantaion/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        iconActionButton: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, size: 30, color: Colors.white),
        ),
        showImage: true,
      ),
      body: HomeViewBody(),
    );
  }
}
