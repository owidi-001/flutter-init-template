// import 'dart:async';

// import 'package:dio/dio.dart';
// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:route_mate/core/utils/constants.dart';
// import 'package:route_mate/firebase_options.dart';
// import 'package:route_mate/modules/authentication/domain/repository/auth.repo.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class FirebasePushNotification {
//   final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   FirebasePushNotification._();

//   static FirebasePushNotification instance = FirebasePushNotification._();

//   Future<void> initialize() async {
//     await Firebase.initializeApp(
//       options: DefaultFirebaseOptions.currentPlatform,
//     );
//     await FirebaseMessaging.instance.requestPermission(
//       alert: true,
//       badge: true,
//       provisional: false,
//       sound: true,
//     );

//     FirebaseMessaging.instance.onTokenRefresh.listen((newToken) {
//       sendDeviceTokenToServer();
//     });

//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       if (kDebugMode) {
//         print('Foreground Notification: ${message.notification?.title}');
//       }
//       _displayNotification(
//         message.notification?.title ?? 'Route Mate',
//         message.notification?.body ??
//             'You have a new Route Mate notification',
//       );
//     });

//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       if (kDebugMode) {
//         print(
//             'Background/terminated Notification: ${message.notification?.title}');
//       }
//     });
//   }

//   Future<void> _displayNotification(String title, String body) async {
//     const AndroidNotificationDetails androidPlatformChannelSpecifics =
//         AndroidNotificationDetails('your_channel_id', 'your_channel_name',
//             channelDescription:
//                 'This channel is used for important notifications.',
//             importance: Importance.max,
//             priority: Priority.high,
//             icon: '@mipmap/launcher_icon');

//     const NotificationDetails platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//     );

//     await _flutterLocalNotificationsPlugin.show(
//       0,
//       title,
//       body,
//       platformChannelSpecifics,
//     );
//   }

//   Future<String?> getDeviceToken() async {
//     return await FirebaseMessaging.instance.getToken();
//   }

//   Future<void> sendDeviceTokenToServer([String? deviceToken]) async {
//     String? token = await FirebaseMessaging.instance.getToken();
//     String? authToken =
//         deviceToken ?? AuthenticationRepository.instance.authToken;
//     final options = BaseOptions(
//         baseUrl: BASE_URL,
//         receiveDataWhenStatusError: true,
//         connectTimeout: const Duration(milliseconds: TIMEOUT),
//         sendTimeout: const Duration(milliseconds: TIMEOUT),
//         receiveTimeout: const Duration(milliseconds: TIMEOUT),
//         headers: {
//           "Authorization": 'Bearer $authToken',
//           "x-user-app": "customer"
//         });

//     final dio = Dio(options);
//     if (token != null && authToken != null) {
//       try {
//         await dio.post("/notification/register-fcm-token/",
//             data: {"fcm_token": token});
//         if (kDebugMode) {
//           print('Device Token Sent to Server');
//         }
//       } catch (e) {
//         if (kDebugMode) {
//           print('Failed to send device token to the server: $e');
//         }
//       }
//     }
//   }
// }
