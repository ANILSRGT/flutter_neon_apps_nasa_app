part of '../settings_page_imports.dart';

class _SettingsPageSelectorItem extends StatelessWidget {
  const _SettingsPageSelectorItem({
    required this.icon,
    required this.title,
    required this.value,
    this.onTap,
  });

  final Widget icon;
  final String title;
  final Widget value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: AppDoubleValues.sm.extPadding.all,
        child: Row(
          spacing: AppDoubleValues.md.value,
          children: [
            SizedBox.square(
              dimension: AppDoubleValues.xl3.value * 1.1,
              child: Container(
                padding: AppDoubleValues.sm.extPadding.all,
                decoration: BoxDecoration(
                  borderRadius: AppDoubleValues.md.extRadius.border.all,
                  color: context.appThemeExt.appColors.primary.value,
                ),
                child: IconTheme(
                  data: IconThemeData(
                    color: context.appThemeExt.appColors.primary.onColor,
                  ),
                  child: FittedBox(child: icon),
                ),
              ),
            ),
            SubtitleText(title: title, fontWeight: FontWeight.w500),
            const Spacer(),
            value,
          ],
        ),
      ),
    );
  }
}
