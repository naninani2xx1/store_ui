import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:store_ui/config/colors.dart';
import 'package:store_ui/config/constanst.dart';
import 'package:store_ui/config/font_style.dart';
import 'package:store_ui/faker/faker.dart';

class HomeUI extends StatelessWidget {
  const HomeUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavigationBarHome(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HeaderHome(),
            CategoryListHome(),
            ProductListHome(),
          ],
        ),
      ),
    );
  }
}

class BottomNavigationBarHome extends StatelessWidget {
  const BottomNavigationBarHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const String mainUrl = "assets/icons";
    return SizedBox(
      height: 60.0,
      width: double.maxFinite,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildItemNavigationBar(
                    label: 'Home',
                    urlIcon: '$mainUrl/Home.svg',
                    isSelected: true),
                _buildItemNavigationBar(
                    label: 'Search', urlIcon: '$mainUrl/Search.svg'),
                _buildItemNavigationBar(
                    label: 'Cart', urlIcon: '$mainUrl/Bag.svg'),
                _buildItemNavigationBar(
                    label: 'Settings', urlIcon: '$mainUrl/Settings.svg'),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Container(
                height: 1.0,
                width: MediaQuery.of(context).size.width * 0.55,
                decoration: BoxDecoration(
                  color: primaryColor,
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    // transform: GradientRotation(5.0),
                    colors: [
                      Colors.white,
                      primaryColor,
                      Colors.white,
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildItemNavigationBar(
      {required String label,
      required String urlIcon,
      bool isSelected = false}) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: SvgPicture.asset(
              urlIcon,
              color: isSelected ? primaryColor : darkColor,
              width: 24,
              height: 24,
            ),
          ),
          const SizedBox(height: 4.0),
          Center(
            child: Text(
              label,
              style: PrimaryFont.style().copyWith(
                fontSize: 12.0,
                color: isSelected ? primaryColor : darkColor,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class HeaderHome extends StatelessWidget {
  const HeaderHome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14.0),
      child: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(top: 15.0),
          width: size.width,
          constraints: const BoxConstraints(
            maxHeight: 180.0,
            minHeight: 130,
          ),
          height: size.height * 0.2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SvgPicture.asset("assets/icons/Menu.svg"),
                    SvgPicture.asset("assets/icons/Profile.svg"),
                  ],
                ),
              ),
              const Spacer(),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      "Explore",
                      style: PrimaryFont.style().copyWith(
                        fontSize: 36.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "Best trendy collection!",
                      style: PrimaryFont.style().copyWith(
                        fontSize: 18.0,
                        color: disableColor,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryListHome extends StatelessWidget {
  const CategoryListHome({super.key});

  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(top: 25.0, bottom: 0.0),
      constraints: const BoxConstraints(
        minHeight: 35,
        maxHeight: 40,
      ),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 14.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _buildItem(
              label: listCategory[index],
              isSelected: index == 0 ? true : false);
        },
        separatorBuilder: (ctx, index) => const SizedBox(width: 8.0),
        itemCount: listCategory.length,
      ),
    );
  }

  Widget _buildItem({required String label, required bool isSelected}) {
    return Container(
      padding: const EdgeInsets.all(5.0),
      constraints: const BoxConstraints(maxWidth: 70, minWidth: 60),
      decoration: BoxDecoration(
        color: isSelected ? primaryColor : Colors.transparent,
        borderRadius: const BorderRadius.all(Radius.circular(radiusContainer)),
      ),
      alignment: Alignment.center,
      child: Text(
        label,
        style: PrimaryFont.style().copyWith(
          color: isSelected ? Colors.white : darkColor,
          fontSize: 16.0,
          fontWeight: isSelected ? FontWeight.w500 : FontWeight.w300,
        ),
      ),
    );
  }
}

class ProductListHome extends StatelessWidget {
  const ProductListHome({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 0,
        crossAxisSpacing: 8,
        tileBottomSpace: 22,
        pattern: [
          const WovenGridTile(0.7, crossAxisRatio: 0.9),
          const WovenGridTile(
            1,
            crossAxisRatio: 0.9,
            alignment: AlignmentDirectional.centerStart,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: listProduct.length,
        (context, index) => Column(
          children: [
            Image.asset(listProduct[index].image),
            Text(listProduct[index].name),
            Text(listProduct[index].price),
          ],
        ),
      ),
    );
  }
}
