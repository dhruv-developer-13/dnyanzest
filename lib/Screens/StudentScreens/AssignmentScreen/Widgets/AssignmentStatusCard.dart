import 'package:flutter/material.dart';

class AssignmentStatusCard extends StatelessWidget {
  final String status;

  const AssignmentStatusCard({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    if (status == "Pending") {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            bottom: 10,
          ),
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                height: 35,
                child: Image.asset(
                  "assets/icons/assignmentIcon.png",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DSA Assignment",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "2 Days Ago",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    } else if (status == "Completed") {
      return Center(
        child: Container(
          margin: EdgeInsets.only(
            bottom: 10,
          ),
          width: size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(
              15,
            ),
          ),
          padding: EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 10,
          ),
          child: Row(
            children: [
              SizedBox(
                width: 35,
                height: 35,
                child: Image.asset(
                  "assets/icons/assignmentIcon.png",
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "DSA Assignment",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Submitted 2 Days Ago",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.keyboard_arrow_right,
                color: Colors.white,
              ),
            ],
          ),
        ),
      );
    }

    return Center(
      child: Container(
        margin: EdgeInsets.only(
          bottom: 10,
        ),
        width: size.width * 0.9,
        decoration: BoxDecoration(
          color: Colors.yellow.shade800,
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 35,
              height: 35,
              child: Image.asset(
                "assets/icons/assignmentIcon.png",
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "DSA Assignment",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Deadline 2 Days",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
