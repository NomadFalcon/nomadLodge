import 'package:nomadlodge_backend_flutter/external_ui/external_ui_components.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';
import 'package:date_picker_plus/date_picker_plus.dart';

import '../ui_elements/maintenance_type_picker.dart';

class MaintenanceCreationModalPage {
  MaintenanceCreationModalPage._();

  static WoltModalSheetPage build(
   {
    required VoidCallback onMaintenanceCreated,
  }) {
    final buttonEnabledListener = ValueNotifier(false);
    const pageTitle = 'New Maintenance';
    final TextEditingController _maintenanceDescriptionController =
        TextEditingController();

    DateTime ?_startSelectedDate;
    DateTime ?_endSelectedDate;

    return WoltModalSheetPage(
      stickyActionBar: ValueListenableBuilder<bool>(
        valueListenable: buttonEnabledListener,
        builder: (_, isEnabled, __) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
            child: WoltElevatedButton(
              onPressed: onMaintenanceCreated,
              enabled: isEnabled,
              child: const Text('Finish adding water'),
            ),
          );
        },
      ),
      pageTitle: const ModalSheetTitle(pageTitle),
      trailingNavBarWidget: const WoltModalSheetCloseButton(),
      leadingNavBarWidget: const WoltModalSheetBackButton(),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: MaintenanceTypeList(
                onMaintenanceTypeSelected: (source) =>
                    buttonEnabledListener.value = source.isSelected,
              ),
            ),
            const ModalSheetSubtitle('Description'),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: TextField(
              controller: _maintenanceDescriptionController,
              decoration: InputDecoration(
                labelText: 'Description',
                border: OutlineInputBorder(),
              ),
            ),),
            
            const ModalSheetSubtitle('Start Date'),
            DatePicker(
                      centerLeadingDate: true,
                      minDate: DateTime(2020),
                      maxDate: DateTime(2040),
                      initialDate: DateTime.now(),
                      
                      onDateSelected:(value) {
                        _startSelectedDate = value;
                      },
                    ),
            const ModalSheetSubtitle('End Date'),
            DatePicker(
                      centerLeadingDate: true,
                      minDate: _startSelectedDate ?? DateTime(2020),
                      maxDate: DateTime(2040),
                      initialDate: DateTime.now(),
                      
                      onDateSelected:(value) {
                        _endSelectedDate = value;
                      },
                    ),
            
          ],
        ),
      ),
    );
  }
}
