import 'package:flutter/material.dart';
import 'package:projects/appcolors.dart';

class DefaultElvatedButton extends StatelessWidget {
  const DefaultElvatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 15, left: 15, top: 15),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 24),
              backgroundColor: MyColors.greencolor,
              foregroundColor: const Color.fromARGB(255, 221, 132, 132),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                  side: BorderSide(
                    width: 2,
                    color: MyColors.greencolor,
                  ))),
          onPressed: () {
            print("Done");
          },
          child: Text(
            "Mark as Done",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.w300,
              color: MyColors.whitecolor,
            ),
          )),
    );
  }
}
