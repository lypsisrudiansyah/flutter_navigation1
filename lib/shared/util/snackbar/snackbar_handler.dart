import 'package:flutter/material.dart';

class SnackbarHandler {
  static void showSnackbar(BuildContext context, String message) {
    var snackBar = SnackBar(
      // & these 2 line on param behavior and margin is for floating snackbar, like example you want to put it on upper side of screen
      duration: const Duration(milliseconds: 500),
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.8,
      ),
      content: Column(
        children: [
          const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueGrey,
            ),
            onPressed: () {},
            child: const Text("Test Button"),
          ),
        ],
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
