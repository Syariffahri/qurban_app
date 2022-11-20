import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';
import 'package:speed_code01/data/kurban_list.dart';
import 'package:speed_code01/widgets/category_widget.dart';
import 'package:speed_code01/widgets/container_row_widget.dart';
import 'package:speed_code01/widgets/list_kurban_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _hide = true;
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.32,
          child: Stack(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.27,
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff0F95D4),
                      Color(0xff229AD3),
                      Color(0xff4765F4),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    tileMode: TileMode.clamp,
                  ),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/profile.png'),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Assalamualaikum",
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "Syarifah Nurbaiti",
                              style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w700,
                                fontSize: 17,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            IconlyBroken.buy,
                            color: Colors.white,
                            size: 26,
                          ),
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
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 20,
                right: 20,
                child: Container(
                  width: screenWidth * 0.7,
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0.0, 0.1),
                        color: Colors.grey.withOpacity(0.2),
                        blurRadius: 2.0,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                IconlyBold.wallet,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Tabungan Kurban",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                _hide ? "Rp 1.030.000" : "-",
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          _hide = !_hide;
                          setState(() {});
                        },
                        child: Icon(
                          _hide ? IconlyBroken.show : IconlyBroken.hide,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        // category kurban
        Wrap(
          spacing: 8.0,
          runSpacing: 10.0,
          children: const [
            CategoryWidget(
              category: "Paket Kurban",
              icon: "assets/icons/icon_domba.png",
              color: Color(0xffD0E1E8),
            ),
            CategoryWidget(
              category: "Patungan Sapi",
              icon: "assets/icons/icon_sapi.png",
              color: Color(0xff95E294),
            ),
            CategoryWidget(
              category: "Tabungan Kurban",
              icon: "assets/icons/icon_coin.png",
              color: Color(0xff94D8E5),
            ),
            CategoryWidget(
              category: "Celengan Kurban",
              icon: "assets/icons/icon_jar.png",
              color: Color(0xffD9B1EE),
            ),
          ],
        ),
        Container(
          height: screenHeight * 0.12,
          margin: const EdgeInsets.only(top: 20),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            children: const [
              ContainerRowWidget(
                image: "assets/icons/card_2.png",
                title: "Persiapan Kurban di awal waktu",
              ),
              ContainerRowWidget(
                image: "assets/icons/card_1.png",
                title: "Beli Kurban Dengan Mudah",
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.only(top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Kurban Pilihan",
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "Lihat Semua",
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.33,
          margin: const EdgeInsets.only(top: 20, bottom: 40),
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20),
            children: kurbanList
                .map(
                  (e) => ListKurbanWidget(
                    image: e['image'],
                    category: e['category'],
                    title: e['title'],
                    price: e['price'],
                    weight: e['weight'],
                    desc: e['desc'],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
