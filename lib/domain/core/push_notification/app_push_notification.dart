import 'dart:convert';
import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter/widgets.dart';

/// Handles background messages from Firebase.
@pragma('vm:entry-point')
Future<void> _firebaseBackgroundMessage(RemoteMessage message) async {
  // Do not manually show local notifications here,
  // Firebase already handles background/terminated ones.
  // You can log or handle data payloads if needed.
}

/// A class to manage push notifications using Firebase Messaging and
/// Flutter Local Notifications.
class AppPushNotification {
  static final _firebaseMessaging = FirebaseMessaging.instance;
  static final _flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Initializes Firebase Messaging and requests necessary permissions.
  static Future<void> init() async {
    // Request permissions for notifications
    await _firebaseMessaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      criticalAlert: true,
      sound: true,
    );

    // Initialize local notifications
    await localInit();
  }

  /// Initializes local notifications and sets up message handlers.
  static Future<void> localInit() async {
    const initializationSettings = InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/launcher_icon'),
      iOS: DarwinInitializationSettings(),
    );

    // Request platform-specific permissions
    if (Platform.isIOS) {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >()!
          .requestPermissions(
            alert: true,
            badge: true,
            sound: true,
            critical: true,
          );
    } else {
      await _flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >()!
          .requestNotificationsPermission();
    }

    // Initialize plugin
    await _flutterLocalNotificationsPlugin.initialize(
      settings: initializationSettings,
      onDidReceiveNotificationResponse: onNotificationTap,
      onDidReceiveBackgroundNotificationResponse: onNotificationTap,
    );

    // Register background handler
    FirebaseMessaging.onBackgroundMessage(_firebaseBackgroundMessage);

    // Handle when user taps a notification (when app was in background)
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (message.notification != null) {
        onNotificationTap(
          NotificationResponse(
            payload: jsonEncode(message.data),
            notificationResponseType:
                NotificationResponseType.selectedNotification,
          ),
        );
      }
    });

    // Handle foreground notifications manually
    FirebaseMessaging.onMessage.listen((message) async {
      if (message.notification != null) {
        // Only show manually when app is in foreground
        await showSimpleNotification(
          title: message.notification!.title ?? 'Notification',
          body: message.notification!.body ?? '',
          payload: jsonEncode(message.data),
        );
      }
    });

    // Check for notification that launched the app
    final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (initialMessage != null) {
      onNotificationTap(
        NotificationResponse(
          payload: jsonEncode(initialMessage.data),
          notificationResponseType:
              NotificationResponseType.selectedNotification,
        ),
      );
    }
  }

  /// Handles notification tap events.
  static void onNotificationTap(NotificationResponse notificationResponse) {
    // TODO: Navigate or handle tap as needed
  }

  /// Displays a simple notification with the given title, body, and payload.
  static Future<void> showSimpleNotification({
    required String title,
    required String body,
    required String payload,
  }) async {
    const notificationDetails = NotificationDetails(
      android: AndroidNotificationDetails(
        'default_channel_id',
        'General Notifications',
        channelDescription: 'Notifications for general updates',
        importance: Importance.max,
        priority: Priority.high,
        playSound: true,
        ticker: 'ticker',
      ),
      iOS: DarwinNotificationDetails(
        presentSound: true,
        presentAlert: true,
        presentBadge: true,
        presentBanner: true,
        presentList: true,
        sound: 'default',
      ),
    );

    await _flutterLocalNotificationsPlugin.show(
      id: 0,
      title: title,
      body: body,
      notificationDetails: notificationDetails,
      payload: payload,
    );
  }

  /// Gets and logs the FCM token.
  static Future<void> getToken() async {
    final token = await _firebaseMessaging.getToken();
    debugPrint('Firebase Messaging Token: $token');
  }
}
