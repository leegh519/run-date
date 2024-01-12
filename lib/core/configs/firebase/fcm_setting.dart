import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:rundate/core/utils/theme/app_theme_data.dart';

class FcmSetting {
  static final FcmSetting instance = FcmSetting._internal();

  FcmSetting._internal() {
    registerNotification();
    configLocalNotification();
  }

  final androidNotificationChannel = const AndroidNotificationChannel(
    'com.chbb.rundate',
    '런데이트',
    description: '런데이트 알림',
    importance: Importance.high,
  );

  static String? appToken;
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  void registerNotification() async {
    await FirebaseMessaging.instance.requestPermission();

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (message.notification != null) {
        showNotification(
          title: message.notification!.title,
          content: message.notification!.body,
        );
      }
      return;
    });

    await Future.delayed(const Duration(milliseconds: 500));

    FirebaseMessaging.instance.getToken().then((token) async {
      await FirebaseMessaging.instance.setAutoInitEnabled(true);
      appToken = token;
      debugPrint('fcmToken : $appToken');
    });
  }

  Future<String> getAppToken() async {
    if (appToken != null) {
      return appToken!;
    }
    final token = await FirebaseMessaging.instance.getToken();
    appToken = token;

    return appToken ?? '';
  }

  void showNotification({
    required String? title,
    required String? content,
  }) async {
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      content,
      platformChannelSpecifics,
      payload: null,
    );
  }

  void configLocalNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');
    DarwinInitializationSettings initializationSettingsIOS =
        const DarwinInitializationSettings();

    InitializationSettings initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(androidNotificationChannel);

    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  final NotificationDetails platformChannelSpecifics =
      const NotificationDetails(
    android: AndroidNotificationDetails(
      'com.chbb.rundate',
      '런데이트',
      channelDescription: '런데이트 알림',
      playSound: true,
      enableVibration: true,
      icon: null,
      importance: Importance.max,
      priority: Priority.high,
      color: AppThemeData.mainColor,
    ),
    iOS: DarwinNotificationDetails(),
  );
}
