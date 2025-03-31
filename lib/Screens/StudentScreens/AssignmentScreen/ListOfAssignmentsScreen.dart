import 'package:flutter/material.dart';

import 'Widgets/AssignmentStatusCard.dart';

class ListOfAssignmentsScreen extends StatefulWidget {
  @override
  _ListOfAssignmentsScreenState createState() =>
      _ListOfAssignmentsScreenState();
}

class _ListOfAssignmentsScreenState extends State<ListOfAssignmentsScreen> {
  List<String> assignmentStatus = ["Pending", "Completed", "UpComing"];
  String assignmentStatusFilter = "All"; // Filter state

  void changeAssignmentStatusFilter(String status) {
    setState(() {
      assignmentStatusFilter = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.1,
            ),
            // Progress Indicator
            SizedBox(
              height: size.height * 0.3,
              width: size.width * 0.65,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "75%",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.1,
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.5,
                          child: Text(
                            "3/4 Assignments Completed",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.3,
                    width: size.width * 0.65,
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.grey.shade300,
                      color: Colors.red,
                      value: 0.75,
                      strokeWidth: 10,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: size.width * 0.9,
              child: Text(
                "Assignments",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: size.width * 0.05,
                ),
                GestureDetector(
                  onTap: () {
                    changeAssignmentStatusFilter("All");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: assignmentStatusFilter == "All"
                          ? Colors.blue
                          : Colors.white,
                      border: assignmentStatusFilter == "All"
                          ? null
                          : Border.all(
                              color: Colors.blue,
                            ),
                    ),
                    child: Text(
                      "All",
                      style: TextStyle(
                        fontWeight: assignmentStatusFilter == "All"
                            ? FontWeight.bold
                            : null,
                        color: assignmentStatusFilter == "All"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    changeAssignmentStatusFilter("Pending");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: assignmentStatusFilter == "Pending"
                          ? Colors.blue
                          : Colors.white,
                      border: assignmentStatusFilter == "Pending"
                          ? null
                          : Border.all(
                              color: Colors.blue,
                            ),
                    ),
                    child: Text(
                      "Pending",
                      style: TextStyle(
                        fontWeight: assignmentStatusFilter == "Pending"
                            ? FontWeight.bold
                            : null,
                        color: assignmentStatusFilter == "Pending"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    changeAssignmentStatusFilter("Completed");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: assignmentStatusFilter == "Completed"
                          ? Colors.blue
                          : Colors.white,
                      border: assignmentStatusFilter == "Completed"
                          ? null
                          : Border.all(
                              color: Colors.blue,
                            ),
                    ),
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        fontWeight: assignmentStatusFilter == "Completed"
                            ? FontWeight.bold
                            : null,
                        color: assignmentStatusFilter == "Completed"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    changeAssignmentStatusFilter("UpComing");
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: assignmentStatusFilter == "UpComing"
                          ? Colors.blue
                          : Colors.white,
                      border: assignmentStatusFilter == "UpComing"
                          ? null
                          : Border.all(
                              color: Colors.blue,
                            ),
                    ),
                    child: Text(
                      "Upcoming",
                      style: TextStyle(
                        fontWeight: assignmentStatusFilter == "UpComing"
                            ? FontWeight.bold
                            : null,
                        color: assignmentStatusFilter == "UpComing"
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            ListView.builder(
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                if (assignmentStatusFilter == "All") {
                  return AssignmentStatusCard(
                    status: assignmentStatus[index],
                  );
                } else if (assignmentStatusFilter == assignmentStatus[index]) {
                  return AssignmentStatusCard(
                    status: assignmentStatusFilter,
                  );
                }
                return SizedBox();
              },
              itemCount: assignmentStatus.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
