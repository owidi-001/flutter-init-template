import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/utils/helpers.dart';
import 'package:route_mate/core/widgets/empty_widget.dart';
import 'package:route_mate/core/widgets/failed_widget.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/dashboard/home/pages/widgets/greetings_carousel.dart';
import 'package:route_mate/modules/dashboard/home/providers/products/bloc.dart';
import 'package:route_mate/modules/dashboard/notifications/pages/notifications.dart';
import 'package:route_mate/modules/dashboard/notifications/providers/bloc.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    if (context.read<NotificationsBloc>().state.status ==
        ServiceStatus.initial) {
      context.read<NotificationsBloc>().add(InitNotifications());
    }
    if (context.read<ProductBloc>().state.status == ServiceStatus.initial) {
      context
          .read<ProductBloc>()
          .add(FetchProducts(query: context.read<ProductBloc>().state.query));
    }

    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<ProductBloc>()
            .add(FetchProducts(query: context.read<ProductBloc>().state.query));
      },
      child: Scaffold(
        body: SafeArea(
            child: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: Text("Route Mate".capitalize),
              expandedHeight: 150,
              centerTitle: true,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                background: ListView(
                  children: <Widget>[
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              zoomDrawerController.toggle?.call();
                            },
                            child: Container(
                              height: 48,
                              width: 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(48)),
                              child: const Center(
                                child: FaIcon(FontAwesomeIcons.bars),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Badge(
                                  label: BlocBuilder<NotificationsBloc,
                                      NotificationsState>(
                                    builder: (context, state) {
                                      return Text(
                                        "${state.notifications.length}",
                                        style: const TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      );
                                    },
                                  ),
                                  alignment: Alignment.topRight,
                                  offset: const Offset(8, -8),
                                  child: const FaIcon(FontAwesomeIcons.bell),
                                ),
                                onPressed: () async {
                                  // Notifications modal
                                  showCupertinoModalPopup(
                                    context: context,
                                    builder: (context) {
                                      return const Notifications();
                                    },
                                  );
                                },
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: kMedium, left: kSmall),
                      child: Text(
                        Helpers.formatDate(DateTime.now()),
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withValues(alpha: .6)),
                      ),
                    ),
                    // Vertical carousel
                    const GreetingsCarousel(),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "My Inventory",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    BlocBuilder<ProductBloc, ProductState>(
                      builder: (context, state) {
                        if (state.status == ServiceStatus.loading) {
                          return const SpinnerWidget(size: kMedium,);
                        }
                        if (state.status == ServiceStatus.failure) {
                          return const FailedWidget();
                        }
                        final products = state.products;

                        return products.isEmpty
                            ? const EmptyWidget()
                            : SingleChildScrollView(child: Placeholder());
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
