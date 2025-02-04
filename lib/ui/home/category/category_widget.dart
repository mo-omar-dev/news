import 'package:flutter/material.dart';
import 'package:news/theme/app_color.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CategoryWidget extends StatelessWidget {
  String imagePath;
  String categoryName;
  int index;
  CategoryWidget(
      {super.key,
      required this.imagePath,
      required this.categoryName,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: Container(
          height: 150,
          color: Theme.of(context).primaryColor,
          margin: const EdgeInsets.symmetric(vertical: 0),
          child: index % 2 == 0
              ? Row(
                  children: [
                    Image.asset(
                      imagePath,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          categoryName,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColor.grey,
                              borderRadius: BorderRadius.circular(20)),
                          height: 40,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'View All',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Theme.of(context).secondaryHeaderColor,
                                foregroundColor: Theme.of(context).primaryColor,
                                child: Icon(Icons.arrow_forward_ios_rounded),
                              ),
                            ],
                          ),
                        )
                        // ToggleSwitch(
                        //   customWidths: [105, 60],
                        //   cornerRadius: 20.0,
                        //   activeBgColors: [
                        //     [Theme.of(context).secondaryHeaderColor],
                        //     [AppColor.grey]
                        //   ],
                        //   activeFgColor: Colors.white,
                        //   inactiveBgColor: Colors.grey,
                        //   inactiveFgColor: Colors.white,
                        //   initialLabelIndex: 1,
                        //   totalSwitches: 2,
                        //   customWidgets: [
                        //     Text(
                        //       'View All',
                        //       style: Theme.of(context).textTheme.displayLarge,
                        //       textAlign: TextAlign.center,
                        //     ),
                        //     CircleAvatar(
                        //       radius: 20,
                        //       backgroundColor:
                        //           Theme.of(context).secondaryHeaderColor,
                        //       foregroundColor: Theme.of(context).primaryColor,
                        //       child: Icon(Icons.arrow_forward_ios_outlined),
                        //     ),
                        //   ],
                        //   radiusStyle: true,
                        //   onToggle: (index) {
                        //     print('switched to: $index');
                        //   },
                        // ),
                      ],
                    ),
                    const Spacer(),
                  ],
                )
              : Row(
                  children: [
                    const Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          categoryName,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColor.grey,
                              borderRadius: BorderRadius.circular(20)),
                          height: 40,
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundColor:
                                    Theme.of(context).secondaryHeaderColor,
                                foregroundColor: Theme.of(context).primaryColor,
                                child: Icon(Icons.arrow_back_ios_rounded),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                'View All',
                                style: Theme.of(context).textTheme.displayLarge,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      imagePath,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                )),
    );
  }
}
