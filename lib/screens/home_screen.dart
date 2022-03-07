import 'package:flutter/material.dart';
import 'package:nft_marketplace/components/icon_button.dart';
import 'package:nft_marketplace/components/nft_featured_item.dart';
import 'package:nft_marketplace/components/theme.dart';
import 'package:nft_marketplace/models/nft_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = ["Art", "Music", "Games", "Domain", "3D", "Pixel"];
  int currentIndex = 0;
  List<NftItem> nfts = [
    NftItem("MEKA #3139", "assets/images/nft_item_1.png", "MekaVerse", "10"),
    NftItem("Monsters", "assets/images/nft_item_2.png", "Monster", "1.2"),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          topbar(),
          const SizedBox(height: 30),
          categoriesBar(size),
          const SizedBox(height: 40),
          featured(size)
        ]),
      ),
    );
  }

  Column featured(Size size) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Featured NFTs",
                style: TextStyle(
                  color: AppTheme.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("View All",
                  style: TextStyle(
                    color: AppTheme.dark.withOpacity(0.5),
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.only(top: 8, bottom: 8),
          width: size.width,
          height: 455,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: nfts.length,
              itemBuilder: (BuildContext context, index) {
                return NftFeaturedItem(nfts: nfts[index], index: index);
              }),
        )
      ],
    );
  }

  Column categoriesBar(Size size) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text(
                "Categories",
                style: TextStyle(
                  color: AppTheme.dark,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("View All",
                  style: TextStyle(
                    color: AppTheme.dark.withOpacity(0.5),
                    fontSize: 16,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          // ignore: prefer_const_constructors
          padding: EdgeInsets.symmetric(vertical: 8),
          width: size.width,
          height: 50,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding:
                      EdgeInsets.only(right: 10.0, left: index == 0 ? 16.0 : 0),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 16),
                      decoration: BoxDecoration(
                        border: index != currentIndex
                            ? Border.all(
                                color: AppTheme.dark.withOpacity(0.3),
                              )
                            : const Border(),
                        borderRadius: BorderRadius.circular(10),
                        color: index == currentIndex
                            ? AppTheme.primary
                            : Colors.white,
                      ),
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == currentIndex
                              ? Colors.white
                              : AppTheme.dark,
                        ),
                      ),
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }

  Padding topbar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 33,
                height: 33,
                decoration: BoxDecoration(
                  color: AppTheme.primary,
                  borderRadius: BorderRadius.circular(33),
                ),
                child: Image.asset('assets/icons/eth.png'),
              ),
              const SizedBox(width: 10),
              const Text(
                "8.42 ETH",
                style: TextStyle(
                  color: AppTheme.dark,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Row(
            children: const [
              CustomIconButton(
                assets: "assets/icons/search-normal.png",
              ),
              SizedBox(width: 10),
              CustomIconButton(
                assets: "assets/icons/notification.png",
              ),
            ],
          )
        ],
      ),
    );
  }
}
