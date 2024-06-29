import 'package:flutter/material.dart';
import 'package:flutter_gutter/flutter_gutter.dart';

class HomePageSearchWidget extends StatelessWidget {
  const HomePageSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 4,
      ),
      height: 58,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.orange.withOpacity(0.02),
        border: Border.all(
          color: Colors.deepOrange,
          width: 1.5,
        ),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.orange,
          ),
          const GutterTiny(),
          Text(
            'Pesquise por produtos',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  color: Colors.orange,
                ),
          ),
        ],
      ),
    );
  }
}
