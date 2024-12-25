import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/core/utils/enums.dart';
import 'package:route_mate/core/widgets/login_prompt.dart';
import 'package:route_mate/core/widgets/widgets.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/dashboard/history/pages/widgets/order_card.dart';
import 'package:route_mate/modules/dashboard/history/providers/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (context.read<OrderBloc>().state.status == ServiceStatus.initial) {
      context.read<OrderBloc>().add(InitOrders());
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Requests"),
      ),
      body: StreamBuilder<AuthenticationStatus>(
          stream: AuthenticationRepository.instance.statusStream,
          initialData: AuthenticationRepository.instance.status,
          builder: (context, snapshot) {
            final isAuthenticated =
                snapshot.data == AuthenticationStatus.authenticated;
            return isAuthenticated
                ? RefreshIndicator(
                    onRefresh: () async {
                      context.read<OrderBloc>().add(InitOrders());
                    },
                    child: BlocBuilder<OrderBloc, OrderState>(
                      builder: (context, state) {
                        switch (state.status) {
                          case ServiceStatus.loading:
                            return const SpinnerWidget(size:kLarge);

                          case ServiceStatus.failure:
                            return Center(
                              child: LoadingFailed(
                                callToAction: () {
                                  context.read<OrderBloc>().add(InitOrders());
                                },
                                title: "Error fetching orders",
                              ),
                            );

                          default:
                            if (state.orders.isEmpty) {
                              return const Center(
                                child: Text('No orders available.'),
                              );
                            }
                            return ListView.separated(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              itemBuilder: (context, index) {
                                final order = state.orders[index];
                                return OrderCard(order: order);
                              },
                              separatorBuilder: (context, index) =>
                                  const Divider(),
                              itemCount: state.orders.length,
                            );
                        }
                      },
                    ),
                  )
                : const Center(
                    child: LoginRequiredPrompt(),
                  );
          }),
    );
  }
}
