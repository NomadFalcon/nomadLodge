import 'package:nomadlodge_backend_client/nomadlodge_backend_client.dart';
import 'package:nomadlodge_backend_flutter/external_ui/external_ui_components.dart';
import 'package:flutter/material.dart';

class MaintenanceTypeList extends StatelessWidget {
  const MaintenanceTypeList({super.key, required this.onMaintenanceTypeSelected});

  final OnSelectionUpdateInSingleSelectionList<MaintenanceType>
      onMaintenanceTypeSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ModalSheetSubtitle('Maintenance type'),
        WoltSelectionList<MaintenanceType>.singleSelect(
          tilePadding: const EdgeInsetsDirectional.symmetric(vertical: 8),
          itemTileDataGroup: WoltSelectionListItemDataGroup(
            group: MaintenanceType.values
                .map(
                  (e) => WoltSelectionListItemData(
                      title: e.name, value: e, isSelected: false),
                )
                .toList(),
          ),
          onSelectionUpdateInSingleSelectionList: onMaintenanceTypeSelected,
        ),
      ],
    );
  }
}
