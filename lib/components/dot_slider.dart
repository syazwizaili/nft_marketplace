import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/theme.dart';

class DotSlider extends StatelessWidget {
  const DotSlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: AppTheme.dark,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: AppTheme.dark.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: AppTheme.dark.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    ]);
  }
}
