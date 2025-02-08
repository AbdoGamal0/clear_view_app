import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const routeName = '/home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("SliverAppBar Example"),
              background: Image.asset(
                'assets/images/EyeLogo.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  leading: const Icon(Icons.star),
                  title: Text("Item $index"),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
