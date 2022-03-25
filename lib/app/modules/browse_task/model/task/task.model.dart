import 'package:catch_task_app/app/modules/browse_task/model/user/user.model.dart';

class TaskModel {
  final String id;
  final String title;
  final String? description;
  final String category;
  final String? imageUrl;
  final String? location;
  final int budget;
  final DateTime dateTime;
  final TaskStatus status;
  late bool isPinned;
  final int? offersCount;
  final bool? isRemoteOnly;
  final UserModel user;
  TaskModel({
    required this.id,
    required this.title,
    this.description,
    required this.category,
    this.imageUrl,
    this.location,
    required this.budget,
    required this.dateTime,
    required this.status,
    required this.isPinned,
    this.offersCount,
    required this.user,
    this.isRemoteOnly = false,
  });
}

enum TaskStatus {
  OPEN,
  ASSIGNED,
  COMPLETED,
  CANCELLED,
  EXPIRED,
  CLOSED,
}