import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/image_shimmer.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:route_mate/modules/dashboard/home/pages/detail_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductDetail(
                  product: product,
                )));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
                width: double.infinity,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: CachedImage(
                        url: product.poster,
                        height: 180,
                        width: double.infinity,
                      ),
                    ),
                    Positioned(
                      bottom: kXSmall,
                      right: kXSmall,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: product.media.map((variation) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: kXXSmall),
                            child: CachedImage(
                              url: variation.url,
                              width: 24,
                              height: 24,
                              radius: kXSmall,
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Positioned(
                        right: kSmall,
                        top: kSmall,
                        child: Icon(
                          product.available ? Icons.check_circle : Icons.info,
                          color:
                              product.available ? Colors.green : Colors.amber,
                        )),
                  ],
                ),
              ),
              const SizedBox(height: kSmall),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: kSmall),
                      child: Text(
                        "Ksh. ${product.displayFee}",
                        style: const TextStyle(
                            fontSize: kMedium, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kSmall),
                    child: Row(
                      children: [
                        const Icon(Icons.star,
                            color: Colors.orange, size: kMedium),
                        const SizedBox(width: kXSmall),
                        Text("${product.rating}",
                            style: const TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kXSmall),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kSmall),
                child: Text(
                  product.name,
                  style: const TextStyle(fontSize: kMedium, color: Colors.grey),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                height: kXSmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
