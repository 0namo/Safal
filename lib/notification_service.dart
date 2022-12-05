// import 'dart:async';
// import 'dart:html';

// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationServices {
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   // final StreamController<ReceivedNotification> didReceiveLocalNotificationStream =
//   // StreamController<ReceivedNotification>.broadcast();

//   final AndroidInitializationSettings initializationSettingsAndroid =
//       AndroidInitializationSettings('app_icon');

//   //   final DarwinInitializationSettings initializationSettingsDarwin =
//   //     DarwinInitializationSettings(
//   //   requestAlertPermission: false,
//   //   requestBadgePermission: false,
//   //   requestSoundPermission: false,
//   //   onDidReceiveLocalNotification:
//   //       (int id, String? title, String? body, String? payload) async {
//   //     didReceiveLocalNotificationStream.add(
//   //       ReceivedNotification(
//   //         id: id,
//   //         title: title,
//   //         body: body,
//   //         payload: payload,
//   //       ),
//   //     );
//   //   },
//   //   notificationCategories: darwinNotificationCategories,
//   // )

//   void initilization() async {
//     final InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       // iOS: initializationSettingsDarwin,
//     );

//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//     );
//   }

//   sendNotification() {
//     NotificationDetails details = NotificationDetails(
//       android: AndroidNotificationDetails(
//         "channelId",
//         "channelName",
//         importance: Importance.defaultImportance,
//       ),
//     );
//     flutterLocalNotificationsPlugin.show(
//       1,
//       'oman',
//       'omam rai lives ininaqruwa',
//       details,
//     );
//   }
// }
