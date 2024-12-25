import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:route_mate/core/data/snack_message/snack_message.dart';
import 'package:route_mate/core/providers/internet_providers/internet_bloc.dart';
import 'package:route_mate/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:android_intent_plus/android_intent.dart';

class Helpers {
  static maskSubsection(String text, {double maskFraction = 0.5}) {
    if (maskFraction <= 0 || maskFraction >= 1) {
      throw ArgumentError('maskFraction must be between 0 and 1');
    }

    int length = text.length;
    if (length < 4) {
      return text; // No masking needed for short strings
    }

    // Calculate start and end based on the mask fraction
    int start = (length * (1 - maskFraction) / 2).round();
    int end = length - start;

    // Create the masked section
    String maskedSection = '*' * (end - start);

    // Construct the masked string
    return text.replaceRange(start, end, maskedSection);
  }

  static String shortenNumber(double num) {
    if (num < 1000) {
      return num.toString();
    } else if (num < 1000000) {
      return '${(num / 1000).toStringAsFixed((num < 10000) ? 1 : 0).replaceAll(RegExp(r'\.0$'), '')}k';
    } else if (num < 1000000000) {
      return '${(num / 1000000).toStringAsFixed(1).replaceAll(RegExp(r'\.0$'), '')}m';
    }
    return '${(num / 1000000000).toStringAsFixed(1).replaceAll(RegExp(r'\.0$'), '')}b';
  }

  // Fetch CSRF token for the interceptor
  static Future<String?> fetchCsrfToken() async {
    try {
      final Dio dio = Dio(BaseOptions(
        baseUrl: BASE_URL,
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(milliseconds: TIMEOUT),
        sendTimeout: const Duration(milliseconds: TIMEOUT),
        receiveTimeout: const Duration(milliseconds: TIMEOUT),
      ));
      final response = await dio.get('${BASE_URL}accounts/csrf/');
      if (response.statusCode == 200) {
        final csrfToken = response.data['csrfToken'];
        return csrfToken;
      } else {
        debugPrint('Failed to fetch CSRF token');
        return null;
      }
    } catch (e) {
      debugPrint('Error fetching CSRF token: $e');
      return null;
    }
  }

  // Method to get greeting message based on the time of the day
  static String greetings() {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  // Method to format a double amount with commas
  static String amountFormatter(double amount) {
    final formatter = NumberFormat('#,##0.00');
    return formatter.format(amount);
  }

  // Method to format a DateTime object into a human-readable string
  static String dateFormatter(DateTime dateTime) {
    final formatter = DateFormat('EEEE, MMMM d, y');
    return formatter.format(dateTime);
  }

  static String timeAgo(DateTime dateTime) {
    final now = DateTime.now();
    final difference = now.difference(dateTime);

    if (difference.inDays >= 365) {
      final years = (difference.inDays / 365).floor();
      return '$years year${years > 1 ? 's' : ''} ago';
    } else if (difference.inDays >= 30) {
      final months = (difference.inDays / 30).floor();
      return '$months month${months > 1 ? 's' : ''} ago';
    } else if (difference.inDays >= 7) {
      final weeks = (difference.inDays / 7).floor();
      return '$weeks week${weeks > 1 ? 's' : ''} ago';
    } else if (difference.inDays >= 1) {
      return '${difference.inDays} day${difference.inDays > 1 ? 's' : ''} ago';
    } else if (difference.inHours >= 1) {
      return '${difference.inHours} hr${difference.inHours > 1 ? 's' : ''} ago';
    } else if (difference.inMinutes >= 1) {
      return '${difference.inMinutes} min${difference.inMinutes > 1 ? 's' : ''} ago';
    } else {
      return 'Just now';
    }
  }

  // Show snack messages
  static void showSnackBar(BuildContext context, SnackMessage snackMessage) {
    final color = _getSnackBarColor(snackMessage.tone);
    final snackBar = SnackBar(
      content: Text(
        snackMessage.message,
        style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: _getSnackTextColor(_getSnackBarColor(SnackTone.error))),
      ),
      backgroundColor: color,
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Snack message color
  static Color _getSnackBarColor(SnackTone tone) {
    switch (tone) {
      case SnackTone.error:
        return Colors.red;
      case SnackTone.success:
        return Colors.green;
      case SnackTone.warning:
        return Colors.orange;
      case SnackTone.info:
        return Colors.blue;
    }
  }

  static Color _getSnackTextColor(Color backgroundColor) {
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black // If background is light, use black text
        : Colors.white; // If background is dark, use white text
  }

  // Connectivity message
  static String connectivityStatusMessage(ConnectivityStatusEnum status) {
    switch (status) {
      case ConnectivityStatusEnum.DISCONNECTED:
        return "Internet connection lost. Please reconnect.";
      case ConnectivityStatusEnum.NOINTERNET:
        return "No internet access. Check your settings.";
      default:
        return "Connection unstable. Check your network.";
    }
  }

  // Launch maps navigation intent
  static void realTimeNavigation(LatLng destination) {
    final intent = AndroidIntent(
        action: 'action_view',
        data:
            'google.navigation:q=${destination.latitude},${destination.longitude}',
        package: 'com.google.android.apps.maps');
    intent.launch();
  }

  static String formattingAmount(double amount) {
    // Format the double to a human-readable string with commas
    String formattedAmount = amount.toStringAsFixed(2);
    final parts = formattedAmount.split('.');
    final RegExp regex = RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))');
    parts[0] =
        parts[0].replaceAllMapped(regex, (Match match) => '${match[1]},');

    // return parts.join('.');
    return parts[0];
  }

  static String randomString(int length) {
    final random = Random();
    const characters =
        'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return String.fromCharCodes(
      Iterable.generate(
        length,
        (_) => characters.codeUnitAt(
          random.nextInt(characters.length),
        ),
      ),
    );
  }

// Launch caller
  static Future<void> makeCall(String phoneNumber) async {
    debugPrint("Called Phone: $phoneNumber");
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  static Future<void> sendMessage(String phoneNumber, String message) async {
    // Construct the SMS URI
    final Uri smsUri = Uri(
      scheme: 'sms',
      path: phoneNumber,
      queryParameters: {'body': message},
    );

    // Check if the device can launch the SMS URI
    if (await canLaunchUrl(smsUri)) {
      await launchUrl(smsUri);
    } else {
      throw 'Could not launch SMS app with phone number: $phoneNumber';
    }
  }

// Launch mailer
  static Future<void> launchMailer(String email) async {
    final Uri launchUri = Uri(
        scheme: 'mailto',
        path: email,
        queryParameters: {'subject': "CEMASTEA CONNECT - HELP"});
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    } else {
      throw 'Could not launch $launchUri';
    }
  }

  // Launch Twitter
  static Future<void> launchTwitter(String urlOrUsername) async {
    // Construct the URL
    String url;
    if (Uri.tryParse(urlOrUsername)?.hasAbsolutePath ?? false) {
      url = urlOrUsername;
    } else {
      url = 'https://twitter.com/$urlOrUsername';
    }

    // Parse the URL
    final Uri launchUri = Uri.parse(url);

    // Launch the URL
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Launch Facebook
  static Future<void> launchFacebook(String urlOrUsername) async {
    // Construct the URL
    String url;
    if (Uri.tryParse(urlOrUsername)?.hasAbsolutePath ?? false) {
      url = urlOrUsername;
    } else {
      url = 'https://www.facebook.com/$urlOrUsername';
    }

    // Parse the URL
    final Uri launchUri = Uri.parse(url);

    // Launch the URL
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Launch YouTube
  static Future<void> launchYoutube(String urlOrName) async {
    // Construct the URL
    String url;
    if (Uri.tryParse(urlOrName)?.hasAbsolutePath ?? false) {
      url = urlOrName;
    } else {
      url = 'https://www.youtube.com/user/$urlOrName';
    }

    // Parse the URL
    final Uri launchUri = Uri.parse(url);

    // Launch the URL
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

  // Format date
  static List months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  // Format date to readable string
  static String formatDate(DateTime dateTime) {
    String month = months[dateTime.month - 1];
    String date = "${dateTime.day}-$month-${dateTime.year}";
    return date;
  }

  static ImagePicker imagePicker = ImagePicker();
  static Future<File?> uploadImage({ImageSource? source}) async {
    var pickedImage = await imagePicker.pickImage(
        source: source ?? ImageSource.gallery,
        preferredCameraDevice: CameraDevice.rear);
    if (pickedImage != null) {
      return File(pickedImage.path);
    }
    return null;
  }
}
