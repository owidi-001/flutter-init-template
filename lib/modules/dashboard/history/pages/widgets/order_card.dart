import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/dashboard/history/domain/models/order.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderCard extends StatelessWidget {
  final Order order;

  const OrderCard({super.key, required this.order});

  _showOrderDetails(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) {
        return Material(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: kSmall),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kXSmall),
                color: Theme.of(context)
                    .colorScheme
                    .primaryContainer
                    .withOpacity(.1)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Order Details",
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                  const Divider(),
                  Text(
                    Helpers.formatDate(order.createdAt),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(.8)),
                  ),
                  const SizedBox(
                    height: kSmall,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#${order.referenceNumber}',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Payment: ${order.payment?.status.name}',
                        style: TextStyle(
                          color:
                              order.payment?.status == PaymentStatus.COMPLETED
                                  ? Colors.green
                                  : Colors.red,
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  RichText(
                    text: TextSpan(
                      text: "Items: ",
                      children: [
                        TextSpan(
                            text: "${order.rentalItems.length}",
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.onSurface))
                      ],
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        final variant = order.rentalItems[index].variant;

                        return Row(
                          children: [
                            CachedImage(
                              url: order.rentalItems[index].product.poster,
                              height: 80,
                              width: 80,
                              radius: kSmall,
                            ),
                            const SizedBox(
                              width: kSmall,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      order.rentalItems[index].product.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium!
                                          .copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary),
                                    ),
                                    order.rentalItems[index]
                                            .merchantReturnConfirmed
                                        ? FaIcon(
                                            FontAwesomeIcons.checkDouble,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          )
                                        : const SizedBox.shrink()
                                  ],
                                ),
                                const SizedBox(
                                  height: kSmall,
                                ),
                                variant != null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSurface
                                                        .withOpacity(.5)),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        kXSmall)),
                                            child: Center(
                                              child: Text(
                                                variant.size,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .titleSmall,
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            " | ",
                                          ),
                                          Text(variant.color),
                                        ],
                                      )
                                    : const SizedBox.shrink(),
                                const SizedBox(
                                  height: kSmall,
                                ),
                                Text(
                                  "Quantity: ${order.rentalItems[index].units} | ${order.rentalItems[index].fee}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSurface
                                              .withOpacity(.8)),
                                ),
                              ],
                            ))
                          ],
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                            color: Colors.transparent,
                          ),
                      itemCount: order.rentalItems.length),
                  const Divider(),
                  if (order.note != null && order.note!.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Note: ${order.note}',
                        style: const TextStyle(fontStyle: FontStyle.italic),
                      ),
                    ),
                  RichText(
                      text: TextSpan(
                          text: "Amount: ",
                          children: [
                            TextSpan(
                                text: "${order.fee}",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface))
                          ],
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium!
                              .copyWith(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontWeight: FontWeight.bold))),
                  RichText(
                    text: TextSpan(
                        text: "Shipment: ",
                        children: [
                          TextSpan(
                              text: "${order.shipmentFee}",
                              style: TextStyle(
                                  color:
                                      Theme.of(context).colorScheme.onSurface))
                        ],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Theme.of(context).colorScheme.primary,
                                fontWeight: FontWeight.bold)),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _showOrderDetails(context);
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kSmall),
        padding:
            const EdgeInsets.symmetric(horizontal: kSmall, vertical: kSmall),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(kXSmall),
            color:
                Theme.of(context).colorScheme.primaryContainer.withOpacity(.1)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Helpers.formatDate(order.createdAt),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(.8)),
            ),
            const SizedBox(
              height: kSmall,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '#${order.referenceNumber}',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                TextButton.icon(
                  onPressed: () {
                    _showOrderDetails(context);
                  },
                  icon: Text(
                    "Details",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  ),
                  label: const FaIcon(FontAwesomeIcons.arrowRight),
                )
              ],
            ),
            RichText(
                text: TextSpan(
                    text: "#Items:",
                    children: [
                      TextSpan(
                          text: "${order.rentalItems.length}",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface))
                    ],
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.primary))),
          ],
        ),
      ),
    );
  }
}
