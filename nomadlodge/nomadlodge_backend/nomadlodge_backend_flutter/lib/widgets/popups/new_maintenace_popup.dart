import 'package:nomadlodge_backend_flutter/external_ui/external_ui_components.dart';
import 'package:flutter/material.dart';
import 'package:wolt_modal_sheet/wolt_modal_sheet.dart';

class NewMaintenanceModalPage {
  NewMaintenanceModalPage._();

  static WoltModalSheetPage build({
    required VoidCallback onSelectCreateCleaningForAllBookingsTapped,
  }) {
    return WoltModalSheetPage(
      stickyActionBar: Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        child: Column(
          children: [
            Builder(builder: (context) {
              return WoltElevatedButton(
                onPressed: WoltModalSheet.of(context).showNext,
                child: const Text('Create a new maintenance request'),
              );
            }),
            const SizedBox(height: 8),
            WoltElevatedButton(
              onPressed: onSelectCreateCleaningForAllBookingsTapped,
              child: const Text('Run task for all Reservations'),
            ),
          ],
        ),
      ),
      pageTitle: ModalSheetTitle(
        'Would you like to create a new maintenance request or create a cleaning request for each booking?',
      ),
      trailingNavBarWidget: const WoltModalSheetCloseButton(),
      child: const Padding(
        padding: EdgeInsets.only(
            bottom: (2 * WoltElevatedButton.defaultHeight) + 48),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child:
              ModalSheetContentText('We can make sure all bookings have a cleaning request at the end of the stay.'),
        ),
      ),
    );
  }
}
