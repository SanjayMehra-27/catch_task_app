import 'package:get/get.dart';
enum SortBy {
 AS_TASKER,
 AS_POSTER,
}
class SortByController extends GetxController {
  final isExpanded = false.obs;
  final _selected = SortBy.AS_TASKER.obs;
  final sortItems = [
    'As Tasker',
    'As Poster',
  ].obs;

  SortBy get selectedSortBy => _selected.value;

  set selectedSortBy(SortBy value) {
    _selected.value = value;
  }

  setSelectedSortBy(int index) {
    selectedSortBy = SortBy.values[index];
  }
}
