
import 'package:nomadlodge_backend_flutter/external_ui/external_ui_components.dart';
/// Represents the data for a list item in the WoltSelectionList widget.
class WoltSelectionListItemDataGroup<T> {
  /// The list of items in the group.
  final List<WoltSelectionListItemData<T>> group;

  int get itemTileCount => group.length;

  List<T> get selectedValues => group
      .where((c) => c.isSelected)
      .map((e) => e.value)
      .toList(growable: false);

  const WoltSelectionListItemDataGroup({required this.group});

  /// Updates the selection status of the item at the specified index and returns a new
  /// `WoltSelectionListItemDataGroup` instance with the updated selection status.
  ///
  /// The method handles the selection logic based on the `selectionListType` of the group. If
  /// the `selectionListType` is `WoltSelectionListType.multiSelect`, only the item at the
  /// specified index will be updated with the new selection status. If the `selectionListType`
  /// is `WoltSelectionListType.singleSelect`, all items in the group will be updated. Only the
  /// item at the specified index will be selected, while all other items will be deselected.
  ///
  /// The method returns a new `WoltSelectionListItemDataGroup` instance with the updated
  /// selection status. The original `WoltSelectionListItemDataGroup` instance is not modified.
  WoltSelectionListItemDataGroup<T> onSelectedAt(
    int index, {
    required WoltSelectionListType selectionListType,
    required bool isSelected,
  }) {
    List<WoltSelectionListItemData<T>> updatedGroup;

    switch (selectionListType) {
      case WoltSelectionListType.multiSelect:
        updatedGroup = List<WoltSelectionListItemData<T>>.of(group);
        final element = group.elementAt(index);
        updatedGroup[index] = element.copyWith(isSelected: isSelected);
        break;
      case WoltSelectionListType.singleSelect:
        updatedGroup = group.map((item) {
          final selectedIndex = group.indexOf(item);

          return item.copyWith(
            isSelected: index == selectedIndex ? isSelected : false,
          );
        }).toList();
        break;
    }

    return WoltSelectionListItemDataGroup(group: updatedGroup);
  }

  WoltSelectionListItemDataGroup<T> copyWith(
    List<WoltSelectionListItemData<T>>? group,
  ) {
    return WoltSelectionListItemDataGroup(group: group ?? this.group);
  }
}
