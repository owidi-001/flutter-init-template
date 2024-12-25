import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:route_mate/modules/dashboard/home/pages/widgets/product_detail_carousel.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        centerTitle: false,
        actions: [
          const SizedBox(
            width: kSmall,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductDetailCarousel(product: product),
            const SizedBox(height: kSmall),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kSmall),
                  child: Text(
                    product.name,
                    style: const TextStyle(
                        fontSize: kMedium, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kSmall),
                  child: Text(
                    "Ksh. ${product.displayFee}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              ],
            ),
            const SizedBox(height: kSmall),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kSmall),
              child: Row(
                children: [
                  Text(
                    "${product.rating} ",
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orange,
                    size: kMedium,
                  ),
                  const SizedBox(width: kSmall),
                  Text("${product.reviewsCount} Reviews",
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .copyWith(color: Colors.grey)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(kSmall),
              child: RichText(
                text: TextSpan(
                  text: "Description: ",
                  children: [
                    TextSpan(
                      text: product.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.normal),
                    ),
                  ],
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary),
                ),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(kSmall),
              child: Text(
                "Pick Variation",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
            ),
            SizedBox(
              height: 42,
              width: double.infinity,
              child: product.variants.isNotEmpty
                  ? ListView.separated(
                      padding: const EdgeInsets.only(left: kSmall),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) => GestureDetector(
                            onTap: () {
                              // _addToCart(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary
                                          .withOpacity(.6)),
                                  borderRadius: BorderRadius.circular(kXSmall)),
                              margin: const EdgeInsets.all(0),
                              child: Stack(
                                children: [
                                  Positioned(
                                    right: kXSmall / 2,
                                    top: kXSmall / 2,
                                    child: Icon(
                                      product.variants[index].inStock > 0
                                          ? Icons.check_circle
                                          : Icons.cancel,
                                      color: product.variants[index].inStock > 0
                                          ? Colors.green
                                          : Colors.red,
                                      size: kSMedium,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: kMedium, vertical: kSmall),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.variants[index].size,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " | ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          product.variants[index].color,
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium!
                                              .copyWith(
                                                  fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      separatorBuilder: (context, index) => const SizedBox(
                            width: kSmall,
                          ),
                      itemCount: product.variants.length)
                  : const Card(
                      margin: EdgeInsets.all(kSmall),
                      child: Center(child: Text("No Variants added")),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
