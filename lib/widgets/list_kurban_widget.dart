import 'package:flutter/material.dart';
import 'package:speed_code01/screens/detail/detail.dart';

class ListKurbanWidget extends StatelessWidget {
  final String image;
  final String category;
  final String title;
  final String price;
  final String weight;
  final String desc;
  const ListKurbanWidget(
      {super.key,
      required this.image,
      required this.category,
      required this.title,
      required this.price,
      required this.weight,
      required this.desc});

  @override
  Widget build(BuildContext context) {
    var sw = MediaQuery.of(context).size.width;
    var sh = MediaQuery.of(context).size.height;
    return Container(
      width: sw * 0.5,
      margin: const EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => DetailScreen(
                  image: image,
                  category: category,
                  title: title,
                  price: price,
                  weight: weight,
                  desc: desc),
            ),
          );
        },
        customBorder:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Ink(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0.1, 0.3),
                color: Colors.grey.withOpacity(0.15),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: category,
                child: Container(
                  width: sw,
                  constraints: BoxConstraints(minHeight: sh * 0.17),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  category,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Text(title),
              ),
              Text(
                price,
                style: Theme.of(context).textTheme.bodyText2!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
