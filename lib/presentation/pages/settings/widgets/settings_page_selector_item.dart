part of '../settings_page_imports.dart';

class _SettingsPageSelectorItem extends StatelessWidget {
  const _SettingsPageSelectorItem({
    required this.title,
    required this.value,
    this.onTap,
  });

  final String title;
  final Widget value;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: AppDoubleValues.md.extPadding.all,
        decoration: BoxDecoration(
          color:
              context.extTheme
                  .byBrightness(
                    light: context.appThemeExt.appColors.lightGrey,
                    dark: context.appThemeExt.appColors.darkGrey,
                  )
                  .value,
          borderRadius: AppDoubleValues.md.extRadius.border.all,
        ),
        child: Theme(
          data: context.extTheme.theme.copyWith(
            textTheme: context.extTheme.theme.textTheme.copyWith().apply(
              bodyColor:
                  context.extTheme
                      .byBrightness(
                        light: context.appThemeExt.appColors.lightGrey,
                        dark: context.appThemeExt.appColors.darkGrey,
                      )
                      .onColor,
              displayColor:
                  context.extTheme
                      .byBrightness(
                        light: context.appThemeExt.appColors.lightGrey,
                        dark: context.appThemeExt.appColors.darkGrey,
                      )
                      .onColor,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            spacing: AppDoubleValues.md.value,
            children: [TitleText(title: title), value],
          ),
        ),
      ),
    );
  }
}
