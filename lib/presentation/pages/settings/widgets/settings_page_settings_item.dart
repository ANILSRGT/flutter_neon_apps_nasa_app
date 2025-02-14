part of '../settings_page_imports.dart';

class _SettingsPageSettingsItem extends StatelessWidget {
  const _SettingsPageSettingsItem({
    required this.header,
    required this.children,
  });

  final String header;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SubtitleText(title: header, fontWeight: FontWeight.w600),
        AppDoubleValues.sm.extSizedbox.height,
        Container(
          padding: AppDoubleValues.lg.extPadding.all,
          decoration: BoxDecoration(
            borderRadius: AppDoubleValues.md.extRadius.border.all,
            border: Border.all(color: context.appThemeExt.appColors.grey.value),
          ),
          child: Column(
            children:
                children.expand((child) => [child, const Divider()]).toList()
                  ..removeLast(),
          ),
        ),
      ],
    );
  }
}
