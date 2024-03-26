import 'package:flutter/material.dart';

class SelectFilter extends StatelessWidget {
  const SelectFilter({
    super.key,
    required this.isSelected,
    this.text = "",
    this.onTap,
  });

  final bool isSelected;
  final String text;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(999),
      child: Material(
        child: InkWell(
          onTap: onTap,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(999),
                color: isSelected ? Colors.black : Colors.transparent,
                border: Border.all(width: 1)),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Center(
                child: Text(
              text,
              style: TextStyle(color: isSelected ? Colors.white : Colors.black),
            )),
          ),
        ),
      ),
    );
  }
}
