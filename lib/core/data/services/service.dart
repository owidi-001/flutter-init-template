import 'dart:async';

import 'package:route_mate/modules/dashboard/home/domain/services/categories_service.dart';
import 'package:route_mate/modules/dashboard/home/domain/services/tags_service.dart';
import 'package:dio/dio.dart';
import 'package:dio_http_formatter/dio_http_formatter.dart';
import 'package:route_mate/core/data/failure/failure.dart';
import 'package:route_mate/core/data/handler/handler.dart';
import 'package:route_mate/core/data/multiple_results/multiple_results.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
import 'package:route_mate/modules/authentication/domain/services/services.dart';
import 'package:route_mate/modules/dashboard/home/domain/services/product_service.dart';
import 'package:route_mate/modules/dashboard/notifications/domain/services/services.dart';
import 'package:route_mate/modules/dashboard/history/domain/services/order_service.dart';
import 'package:route_mate/modules/dashboard/settings/components/password/domain/services/service.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

part 'http_client.dart';

GetIt service = GetIt.asNewInstance();

setUpService() {
  service.registerLazySingleton<AuthService>(() => AuthService());
  service
      .registerLazySingleton<NotificationService>(() => NotificationService());
  // Categories
  service.registerLazySingleton<CategoriesService>(
    () => CategoriesService(),
  );
  // Tags
  service.registerLazySingleton<TagsService>(
    () => TagsService(),
  );

  // Products
  service.registerLazySingleton<ProductService>(
    () => ProductService(),
  );
  service.registerLazySingleton<OrderService>(
    () => OrderService(),
  );
  service.registerLazySingleton<PasswordService>(
    () => PasswordService(),
  );

}
