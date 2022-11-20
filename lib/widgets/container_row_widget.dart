import 'package:flutter/material.dart';

class ContainerRowWidget extends StatelessWidget {
  final String image;
  final String title;
  const ContainerRowWidget(
      {super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    var sw = MediaQuery.of(context).size.width;
    return Container(
      width: sw * 0.67,
      padding: const EdgeInsets.symmetric(horizontal: 5),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(
            image,
            width: sw * 0.2,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 10),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "#menebarkebaikan",
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    title,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.bodyText2!.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
