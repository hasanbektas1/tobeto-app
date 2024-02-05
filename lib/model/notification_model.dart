import 'package:cloud_firestore/cloud_firestore.dart';

class NotificationModel {
  final List<NotificationsModel> notifications;

  NotificationModel({required this.notifications});

  factory NotificationModel.fromNotificationsFireStore(
      DocumentSnapshot<Map<String, dynamic>> snapshot) {
    final List<dynamic>? notificationsList = snapshot.data()?['natifications'];
    if (notificationsList == null) {
      return NotificationModel(notifications: []);
    }
    List<NotificationsModel> notifications =
        notificationsList.map((notificationsMap) {
      return NotificationsModel(
        title: notificationsMap['title'] as String,
        date: notificationsMap['date'] as String,
        image: notificationsMap['image'] as String,
        subImage: notificationsMap['subImage'] as String,
      );
    }).toList();
    return NotificationModel(notifications: notifications);
  }
}

class NotificationsModel {
  final String title;
  final String date;
  final String image;
  final String? subImage;

  NotificationsModel(
      {required this.title,
      required this.date,
      required this.image,
      this.subImage});
}
