import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String category;
  final String icon;
  final Color color;
  const CategoryWidget(
      {super.key,
      required this.category,
      required this.icon,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // not initialize yet
      },
      customBorder:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Ink(
        width: MediaQuery.of(context).size.width / 2.3,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: color.withOpacity(0.5),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Image.asset(icon, width: 24),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category,
                    style: Theme.of(context).textTheme.subtitle2,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "Qurbanku",
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(
                          color: const Color(0xff2D2D2D).withOpacity(0.6),
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
