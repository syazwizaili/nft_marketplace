import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/theme.dart';
import 'package:nft_marketplace/models/nft_item.dart';

class NftFeaturedItem extends StatelessWidget {
  final int index;
  final NftItem nfts;

  const NftFeaturedItem({
    Key? key,
    required this.nfts,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 16.0, left: index == 0 ? 16.0 : 0),
      child: Stack(
        children: [
          const SizedBox(width: 326, height: 447),
          Container(
            width: 326,
            height: 405,
            decoration: BoxDecoration(
              color: AppTheme.lightGray,
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.asset(
                  nfts.image,
                  fit: BoxFit.cover,
                  width: 326,
                  height: 310,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("By ${nfts.author}"),
                        Text(
                          nfts.title,
                          style: const TextStyle(
                              color: AppTheme.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Text("Current Price"),
                        Text(
                          "${nfts.price} ETH",
                          style: const TextStyle(
                              color: AppTheme.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 159,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppTheme.dark,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Place Bid",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    color: AppTheme.primary,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Image.asset(
                      "assets/icons/heart_white.png",
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
