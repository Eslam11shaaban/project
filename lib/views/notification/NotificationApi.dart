import 'package:flutter/material.dart';
import 'package:flutter_app2/views/notification/Utils.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:rxdart/rxdart.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:flutter_native_timezone/flutter_native_timezone.dart';

class NotificationApi {
  static final _notifications = FlutterLocalNotificationsPlugin();
  static final onNotifications = BehaviorSubject<String?>();

  static Future _notificationDetails() async {
    final largeIconPath = await Utils.downloadFile(
      'image', // Added comma here
      'largeIcon',
    );
    final bigPicturePath = await Utils.downloadFile(
      'image', // Added comma here
      'bigPicture',
    );

    final styleInformation = BigPictureStyleInformation(
      FilePathAndroidBitmap(largeIconPath), // Pass the actual file path
      largeIcon: FilePathAndroidBitmap(largeIconPath), // Pass the actual file path
    );
    return NotificationDetails(
      android: AndroidNotificationDetails(
        'channel id',
        'channel name',
        'channel description',
        importance: Importance.max,
        styleInformation: styleInformation,
      ),
    );
  }

  static Future<void> init({bool initScheduled = false}) async {
    final AndroidInitializationSettings android =
    AndroidInitializationSettings('@mipmap/ic_launcher');
    final InitializationSettings settings =
    InitializationSettings(android: android,);

    await _notifications.initialize(
      settings,
      onSelectNotification: (payload) async {
        onNotifications.add(payload);
      },
    );

    if (initScheduled) {
      tz.initializeTimeZones();
      final String locationName =
      await FlutterNativeTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(locationName));
    }
  }

  static Future<void> showNotification({
    int id = 0,
    String? title,
    String? body,
    String? payload,
  }) async =>
      _notifications.show(
        id,
        title,
        body,
        await _notificationDetails(),
        payload: payload,
      );
}
