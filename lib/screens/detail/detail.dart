import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../global.dart';

class DetailScreen extends StatefulWidget {
  final String image;
  final String category;
  final String title;
  final String price;
  final String weight;
  final String desc;
  const DetailScreen(
      {super.key,
      required this.image,
      required this.category,
      required this.title,
      required this.price,
      required this.weight,
      required this.desc});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool show = false;
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        show = true;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
            width: screenWidth,
            height: screenHeight * 0.62,
            child: Hero(
              tag: widget.category,
              child: Container(
                alignment: Alignment.topCenter,
                padding:
                    const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: show == false
                    ? const SizedBox.shrink()
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            customBorder: const CircleBorder(),
                            child: CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              child: Icon(
                                IconlyLight.arrow_left,
                                color: CustomColors.black,
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            customBorder: const CircleBorder(),
                            child: CircleAvatar(
                              maxRadius: 20,
                              backgroundColor: Colors.white.withOpacity(0.5),
                              child: Stack(
                                children: [
                                  Icon(
                                    IconlyLight.buy,
                                    color: CustomColors.black,
                                  ),
                                  Positioned(
                                    top: 0,
                                    right: 0,
                                    child: Container(
                                      width: 8,
                                      height: 8,
                                      decoration: const BoxDecoration(
                                        color: Colors.red,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color(0xffF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  widget.category,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 10),
                ),
              ),
              InkWell(
                onTap: () {},
                customBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                child: Ink(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    IconlyLight.info_circle,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.displayLarge,
            ),
          ),
          Text(
            "Bobot ${(widget.weight)}",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: CustomColors.black,
                ),
          ),
          CustomSpace.spaceHeight,
          Text(
            widget.desc,
            textAlign: TextAlign.justify,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _biaya(context, "Perawatan"),
              _biaya(context, "Pemotongan"),
              _biaya(context, "Distribusi"),
            ],
          ),
          SizedBox(
            height: screenHeight * 0.1,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              offset: const Offset(0.0, -1.0),
              color: Colors.grey.withOpacity(0.15),
              blurRadius: 6.0,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harga/ekor",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  CustomSpace.spaceHeight,
                  Text(
                    widget.price,
                    style: Theme.of(context).textTheme.displayLarge,
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  "Beli Sekarang",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _biaya(context, String biaya) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Text(
            "Free",
            style: TextStyle(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ),
        Text(
          "Biaya ${(biaya)}",
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                fontSize: 12,
                color: CustomColors.black,
              ),
        ),
      ],
    ),
  );
}
