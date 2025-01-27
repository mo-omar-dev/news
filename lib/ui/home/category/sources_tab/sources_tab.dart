import 'package:flutter/material.dart';
import 'package:news/model/source_response.dart';
import 'package:news/theme/app_color.dart';
import 'package:news/ui/home/category/news/news_widget.dart';
import 'package:news/ui/home/category/sources_tab/source_name_item.dart';

// ignore: must_be_immutable
class SourcesTab extends StatefulWidget {
  List<Source> sourcesList = [];

  SourcesTab({super.key, required this.sourcesList});

  @override
  State<SourcesTab> createState() => _SourcesTabState();
}

class _SourcesTabState extends State<SourcesTab> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.sourcesList.length,
        child: Column(
          children: [
            TabBar(
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                isScrollable: true,
                dividerColor: AppColor.transparent,
                tabAlignment: TabAlignment.start,
                indicatorColor: Theme.of(context).indicatorColor,
                tabs: widget.sourcesList.map((source) {
                  return SourceNameItem(
                      source: source,
                      isSelected:
                          selectedIndex == widget.sourcesList.indexOf(source));
                }).toList()),
            Expanded(
                child: NewsWidget(source: widget.sourcesList[selectedIndex]))
          ],
        ));
  }
}
