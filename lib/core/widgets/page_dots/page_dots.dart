import 'package:flutter/material.dart';
import 'package:neon_apps_nasa_app/core/enums/app_double_values.dart';

class PageDots extends StatelessWidget {
  const PageDots({
    required this.currentPage,
    required this.pageCount,
    required this.onPageSelected,
    super.key,
    this.selectedColor = Colors.black,
    this.unselectedColor = Colors.grey,
  });

  final int currentPage;
  final int pageCount;
  final void Function(int selected) onPageSelected;
  final Color selectedColor;
  final Color unselectedColor;

  void _onPageSelected(int selected) {
    onPageSelected(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: AppDoubleValues.xs.value,
      children:
          pageCount > 0
              ? List.generate(
                pageCount,
                (index) => GestureDetector(
                  onTap: () => _onPageSelected(index),
                  child: Icon(
                    Icons.circle,
                    color:
                        currentPage == index ? selectedColor : unselectedColor,
                    size: AppDoubleValues.lg.value * 0.75,
                  ),
                ),
              )
              : [],
    );
  }
}
