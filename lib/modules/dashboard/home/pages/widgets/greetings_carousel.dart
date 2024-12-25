import 'package:route_mate/modules/authentication/domain/models/user.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:flutter/material.dart';

class GreetingsCarousel extends StatelessWidget {
  const GreetingsCarousel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final user = AuthenticationRepository.instance.merchant?.user;
    return StreamBuilder<User?>(
        stream: AuthenticationRepository.instance.userStream,
        builder: (context, snapshot) {
          return Container(
            padding: const EdgeInsets.only(left: kSmall),
            alignment: Alignment.centerLeft,
            child: CarouselSlider(
              items: [
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "${Helpers.greetings()}, ",
                            children: [
                              TextSpan(
                                  text:
                                      "${snapshot.data?.name.split(' ')[0]}👋🏼",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                            ],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w200,
                                    fontSize: kLarge))),
                  ],
                ),
                Row(
                  children: [
                    RichText(
                        text: TextSpan(
                            text: "Late",
                            children: [
                              const TextSpan(
                                text: " On ",
                              ),
                              TextSpan(
                                  text: "Orders🤯",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .primary)),
                            ],
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.w200,
                                    fontSize: kLarge))),
                  ],
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "We've ",
                        children: [
                          TextSpan(
                              text: "got you ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color:
                                      Theme.of(context).colorScheme.primary)),
                          const TextSpan(
                            text: "covered?",
                          ),
                        ],
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontWeight: FontWeight.w200, fontSize: kLarge),
                      ),
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                autoPlay: true, // enable auto-scrolling
                viewportFraction: 1,
                aspectRatio: 10,
                scrollDirection: Axis.vertical,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: const Duration(seconds: 5),
              ),
            ),
          );
        });
  }
}
