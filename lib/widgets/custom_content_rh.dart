import 'package:application_movil/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CustomContentRH extends StatelessWidget {
  final Text text;
  final AssetImage img;
  const CustomContentRH({
    Key? key, 
    required this.text, 
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            snap: true,
            floating: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: text,
              background: Image(
                fit: BoxFit.fitWidth,
                image: img,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: const [
                GridButton(),
              ],
            ),
          )
        ],
      ),
      drawer:const MenuDrawer(),
    );
  }
}

