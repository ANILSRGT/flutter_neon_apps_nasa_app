part of '../mars_page_imports.dart';

class _MarsPageMarsWeatherCard extends StatelessWidget {
  const _MarsPageMarsWeatherCard({
    required this.sol,
    required this.earthDate,
    required this.highTemp,
    required this.lowTemp,
    this.isSelected = false,
    this.onTap,
  });

  final int sol;
  final String earthDate;
  final String highTemp;
  final String lowTemp;
  final bool isSelected;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final bgColor = isSelected
        ? context.appThemeExt.appColors.primary.value
        : Colors.transparent;
    final fgColor =
        isSelected ? context.appThemeExt.appColors.primary.onColor : null;
    return GestureDetector(
      onTap: () => onTap?.call(),
      child: Container(
        padding: AppDoubleValues.lg.extPadding.all,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: AppDoubleValues.lg.extRadius.border.all,
          border: Border.all(color: context.appThemeExt.appColors.grey.value),
        ),
        child: Column(
          children: [
            TitleText(
              title: 'Sol $sol',
              color: fgColor,
            ),
            SubtitleText(
              title: earthDate,
              fontWeight: FontWeight.w500,
              color: fgColor,
            ),
            Divider(
              indent: AppDoubleValues.md.value,
              endIndent: AppDoubleValues.md.value,
            ),
            SubtitleText(
              title: highTemp,
              fontWeight: FontWeight.w500,
              color: fgColor,
            ),
            SubtitleText(
              title: lowTemp,
              fontWeight: FontWeight.w500,
              color: fgColor,
            ),
          ],
        ),
      ),
    );
  }
}
