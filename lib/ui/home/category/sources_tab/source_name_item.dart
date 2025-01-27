import 'package:flutter/material.dart';
import 'package:news/model/source_response.dart';

// ignore: must_be_immutable
class SourceNameItem extends StatelessWidget {
  Source source;
  bool isSelected;

  SourceNameItem({super.key, required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(source.name ?? '',
          style: isSelected
              ? Theme.of(context).textTheme.displayMedium
              : Theme.of(context).textTheme.displaySmall),
    );
  }
}
