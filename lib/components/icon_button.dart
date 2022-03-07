import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/theme.dart';

class CustomIconButton extends StatelessWidget {
  final String assets;
  const CustomIconButton({
    Key? key,
    required this.assets,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 44,
      height: 44,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppTheme.dark.withOpacity(0.3),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(assets),
    );
  }
}
