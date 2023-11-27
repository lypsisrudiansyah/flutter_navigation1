import 'package:flutter/material.dart';
import 'package:flutter_navigation1/core.dart';
import 'package:flutter_navigation1/shared/util/bottom_sheet/bottom_sheet_handler.dart';
import 'package:flutter_navigation1/shared/util/dialog/dialog_handler.dart';
import 'package:flutter_navigation1/shared/util/loading/loading_handler.dart';
import 'package:flutter_navigation1/shared/util/snackbar/snackbar_handler.dart';
import '../controller/dashboard_controller.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Dashboard"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              /*  SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Button Back"),
                ),
              ),
              const SizedBox(height: 10), */
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    DialogHandler.showDialogConfirm(context, "Are you sure you want to delete this item 22 ?");
                  },
                  child: const Text("Dialog"),
                ),
              ),
              // & iajdoijasd
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    SnackbarHandler.showSnackbar(context, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.");
                  },
                  child: const Text("Snackbar"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () {
                    BottomSheetHandler.showBottomSheet(context);
                  },
                  child: const Text("Bottom Sheet"),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 40,
                child: ElevatedButton(
                  onPressed: () async {
                    LoadingHandler.showLoading(context);
                    await Future.delayed(const Duration(seconds: 1), () {
                      LoadingHandler.hideLoading(context);
                    });
                  },
                  child: const Text("Show Loading"),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardView> createState() => DashboardController();
}
