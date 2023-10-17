import 'package:flutter/material.dart';

class BottomSheetHandler {
  static showBottomSheet(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(20.0),
          child: Wrap(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text('Your data is Ready Now !'),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Ok"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  static void closeBottomSheet(BuildContext context) {
    Navigator.of(context).pop();
  }
}
