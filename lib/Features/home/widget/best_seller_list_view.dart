import 'package:bookly/core/assets.dart';
import 'package:bookly/core/utils/styls.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.blue,
                    image: const DecorationImage(
                        image: AssetImage(
                          AssetsData.testBook,
                        ),
                        fit: BoxFit.fill))),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    'Harry Potter and the Golden of fire',
                    style: Style.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text('J.K Rowling', style: Style.textStyle14),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    const Text('19.99 €', style: Style.textStyle20),
                    const Spacer(),
                    const Icon(
                      FontAwesomeIcons.solidStar,
                      color: Color(0xffFFDD4f),
                    ),
                    const SizedBox(
                      width: 6.3,
                    ),
                    const Text(
                      '4.8',
                      style: Style.textStyle16,
                    ),
                    const SizedBox(
                      width: 6.3,
                    ),
                    Text(
                      '(2346)',
                      style: Style.textStyle14
                          .copyWith(color: const Color(0xff707070)),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
