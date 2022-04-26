import 'package:catch_task_app/app/modules/browse_task/model/offer-received/offer_received.dart';
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
  final List<OfferReceived> offers;
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
    required this.offers,
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
