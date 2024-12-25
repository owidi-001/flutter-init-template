import 'package:route_mate/core/utils/enums.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/dashboard/home/domain/models/product.dart';
import 'package:flutter/material.dart';

class ProductDetailCarousel extends StatelessWidget {
  const ProductDetailCarousel({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    final media = List.from(product.media);
    media.add(Media(
        url: product.poster,
        productId: product.id,
        mediaType: MediaType.IMAGE));
    return Container(
      alignment: Alignment.centerLeft,
      child: CarouselSlider(
        items: [
          ...media.map(
            (e) => ImageWidget(
              url: e.url,
              inStock: product.inStock,
              available: product.available,
            ),
          ),
        ],
        options: CarouselOptions(
          autoPlay: true, // enable auto-scrolling
          viewportFraction: 1,
          aspectRatio: 1,
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget(
      {super.key,
      required this.url,
      required this.inStock,
      required this.available});
  final String url;
  final int inStock;
  final bool available;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
              child: CachedImage(
                  url: url, height: double.infinity, width: double.infinity)),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
          ),
          Positioned(
            top: kSmall,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: kSmall, vertical: kSmall),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kSmall),
                color: available
                    ? Colors.green.withOpacity(.1)
                    : Colors.red.withOpacity(.1),
                // borderRadius: BorderRadius.circular(kSmall),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    available ? Icons.check_circle : Icons.info,
                    color: available ? Colors.green : Colors.red,
                    size: kMedium,
                  ),
                  const SizedBox(
                    width: kSmall,
                  ),
                  Text("$inStock",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: available ? Colors.green : Colors.red)),
                  const SizedBox(width: kSmall),
                  Text(available ? 'Available for hire' : 'Not hireable',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: available ? Colors.green : Colors.red)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
