import 'package:catch_task_app/app/modules/browse_task/model/offer-received/offer_received.dart';
import 'package:catch_task_app/app/modules/browse_task/model/task/task.model.dart';
import 'package:catch_task_app/app/modules/browse_task/model/user/user.model.dart';
import 'package:get/get.dart';

enum TaskTab {
  ALL_TASKS,
  MY_PINS,
  SUGGESTED,
}

final List<OfferReceived> offers= [
      OfferReceived(
        id: '1',
        userName: 'Rahul Singh',
        price: 5000,
        message: 'lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem!',
        dateTime: DateTime.now(),
        rating: 4.5,
      ),
      OfferReceived(
        id: '2',
        userName: 'Krishna Singh',
        price: 5000,
        message: 'lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem!',
        dateTime: DateTime.now(),
        rating: 3.0,
      ),
      OfferReceived(
        id: '3',
        userName: 'Raj Singh',
        price: 5000,
        message: 'lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem!',
        dateTime: DateTime.now(),
        rating: 2.0,
      ),
      OfferReceived(
        id: '4',
        userName: 'Krunal shah',
        price: 5000,
        message: 'lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem!',
        dateTime: DateTime.now(),
        rating: 5.0,
      ),
      OfferReceived(
        id: '5',
        userName: 'Rajesh shah',
        price: 5000,
        message: 'message 5',
        dateTime: DateTime.now(),
        rating: 3.2,
      ),
      OfferReceived(
        id: '6',
        userName: 'Jay Sharma',
        price: 5000,
        message: 'lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, quidem!',
        dateTime: DateTime.now(),
        rating: 1.0,
      ),
    ];

/// dummy [TaskModel] data
final List<TaskModel> allTasks = [
  TaskModel(
    id: '1',
    title: 'task 1',
    isPinned: true,
    budget: 5000,
    description: "Quo ad sit voluptas totam. Culpa quam quibusdam. Dolorum nulla harum consectetur. Aut animi quas eum quia id dolores rerum recusandae. At consequatur dolores omnis nisi consectetur ea.Quia quibusdam nostrum accusamus exercitationem libero quibusdam. Nihil reiciendis ducimus est commodi omnis mollitia. Ut non consectetur eaque vel et enim et.Sed et rerum ut esse adipisci est sed fugiat. Et minus tenetur quia vel ut inventore. Praesentium labore eum magni veniam debitis asperiores rerum. Itaque minus consequatur quis. Occaecati quae quia praesentium.",
    isRemoteOnly: true,
    status: TaskStatus.OPEN,
    location: 'location 1',
    category: 'category 1',
    dateTime: DateTime.now(),
    offersCount: 6,
    imageUrl: 'https://picsum.photos/200/300', 
    user: UserModel(
      id: '1',
      name: 'user 1',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '2',
    title: 'task 2',
    isPinned: false,
    budget: 3000,
    description: 'task 2 description',
    isRemoteOnly: false,
    status: TaskStatus.COMPLETED,
    location: 'location 2',
    category: 'category 2',
    dateTime: DateTime.now(),
    offersCount: 10,
    imageUrl: 'https://picsum.photos/200/300', 
    user: UserModel(
      id: '2',
      name: 'user 2',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '3',
    title: 'task 3',
    isPinned: false,
    budget: 15000,
    description: 'task 3 description',
    isRemoteOnly: false,
    status: TaskStatus.OPEN,
    location: 'location 3',
    category: 'category 3',
    dateTime: DateTime.now(),
    offersCount: 16,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '3',
      name: 'user 3',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '4',
    title: 'task 4',
    isPinned: true,
    budget: 51000,
    description: 'task 4 description',
    isRemoteOnly: false,
    status: TaskStatus.ASSIGNED,
    location: 'location 4',
    category: 'category 4',
    dateTime: DateTime.now(),
    offersCount: 4,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '4',
      name: 'user 4',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '5',
    title: 'task 5',
    isPinned: false,
    budget: 10000,
    description: 'task 5 description',
    isRemoteOnly: false,
    status: TaskStatus.CANCELLED,
    location: 'location 5',
    category: 'category 5',
    dateTime: DateTime.now(),
    offersCount: 2,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '5',
      name: 'user 5',
      imageUrl: 'https://picsum.photos/200/300',
    ),offers: offers,
  ),
  TaskModel(
    id: '6',
    title: 'task 6',
    isPinned: false,
    budget: 20000,
    description: 'task 6 description',
    isRemoteOnly: false,
    status: TaskStatus.EXPIRED,
    location: 'location 6',
    category: 'category 6',
    dateTime: DateTime.now(),
    offersCount: 1,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '6',
      name: 'user 6',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '7',
    title: 'task 7',
    isPinned: false,
    budget: 30000,
    description: 'task 7 description',
    isRemoteOnly: false,
    status: TaskStatus.OPEN,
    location: 'location 7',
    category: 'category 7',
    dateTime: DateTime.now(),
    offersCount: 30,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '7',
      name: 'user 7',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '8',
    title: 'task 8',
    isPinned: false,
    budget: 40000,
    description: 'task 8 description',
    isRemoteOnly: false,
    status: TaskStatus.OPEN,
    location: 'location 8',
    category: 'category 8',
    dateTime: DateTime.now(),
    offersCount: 40,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '8',
      name: 'user 8',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '9',
    title: 'task 9',
    isPinned: false,
    budget: 50000,
    description: 'task 9 description',
    isRemoteOnly: false,
    status: TaskStatus.COMPLETED,
    location: 'location 9',
    category: 'category 9',
    dateTime: DateTime.now(),
    offersCount: 20,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '9',
      name: 'user 9',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
  TaskModel(
    id: '10',
    title: 'task 10',
    isPinned: true,
    budget: 60000,
    description: 'task 10 description',
    isRemoteOnly: true,
    status: TaskStatus.ASSIGNED,
    location: 'location 10',
    category: 'category 10',
    dateTime: DateTime.now(),
    offersCount: 10,
    imageUrl: 'https://picsum.photos/200/300',
    user: UserModel(
      id: '10',
      name: 'user 10',
      imageUrl: 'https://picsum.photos/200/300',
    ),
    offers: offers,
  ),
];

// Pinned Tasks
final List<TaskModel> pinnedTasks = [
  allTasks[0],
  allTasks[3],
  allTasks[9],
];

// Pinned Tasks
final List<TaskModel> suggestedTasks = [
  // add random tasks between 1 to 10 index
  allTasks[1],
  allTasks[5],
  allTasks[8],
  allTasks[9],
];

class MyTaskController extends GetxController {
  final selectedTab = TaskTab.ALL_TASKS.obs;
  final tasks = allTasks.obs;

  void setSelectedTabIndex(int index) {
    selectedTab.value = TaskTab.values[index];
    tasks.value = getSelectedTabView();
  }

  List<TaskModel> getSelectedTabView() {
    switch (selectedTab.value) {
      case TaskTab.ALL_TASKS:
        return allTasks;
      case TaskTab.MY_PINS:
        return pinnedTasks;
      case TaskTab.SUGGESTED:
        return suggestedTasks;
      default:
        return allTasks;
    }
  }

  Future<void> pinTask(TaskModel task) async {
    print(task.id);
    task.isPinned = !task.isPinned;
    tasks.value = getSelectedTabView();
  }
}
