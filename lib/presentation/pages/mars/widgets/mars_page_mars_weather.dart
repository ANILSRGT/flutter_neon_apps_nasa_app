part of '../mars_page_imports.dart';

class _MarsPageMarsWeather extends StatelessWidget {
  const _MarsPageMarsWeather();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, cst) {
        return Observer(
          builder: (_) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppDoubleValues.md.extSizedbox.height,
                AspectRatio(
                  aspectRatio: 16 / 9,
                  child: ClipRRect(
                    borderRadius: AppDoubleValues.lg.extRadius.border.all,
                    child:
                        Image.asset(AppImages.insightLander, fit: BoxFit.cover),
                  ),
                ),
                AppDoubleValues.md.extSizedbox.height,
                const HeaderText(text: 'Latest Weather at\nElysium Planitia'),
                AppDoubleValues.md.extSizedbox.height,
                const SubtitleText(
                  title:
                      'InSight Lander is taking daily weather measurements on Mars at Elysium Planitia, a flat, smooth plain near Mars’ equator.',
                ),
                AppDoubleValues.md.extSizedbox.height,
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: AppDoubleValues.md.value,
                    children: List.generate(
                      6,
                      (index) {
                        return _MarsPageMarsWeatherCard(
                          sol: 265 + index,
                          earthDate: 'Aug 25, 2021',
                          highTemp: 'High: -12°C',
                          lowTemp: 'Low: -100°C',
                          isSelected: _viewModel.selectedSolIndex == index,
                          onTap: () => _viewModel.setSelectedSolIndex(index),
                        );
                      },
                      growable: false,
                    ),
                  ),
                ),
                AppDoubleValues.xl.extSizedbox.height,
                TitleText(
                  title:
                      'Rover Photos from Sol ${_viewModel.selectedSolIndex + 265}',
                ),
                AppDoubleValues.md.extSizedbox.height,
                GridView.builder(
                  shrinkWrap: true,
                  itemCount: 9,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: cst.maxWidth ~/ 180,
                    crossAxisSpacing: AppDoubleValues.md.value,
                    mainAxisSpacing: AppDoubleValues.md.value,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (_, index) {
                    return Card(
                      elevation: 4,
                      // TODO: Deactive color
                      color: context.appThemeExt.appColors.background
                          .byBrightness(context.extTheme.isDark)
                          .value,
                      child: Padding(
                        padding: AppDoubleValues.md.extPadding.all,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius:
                                    AppDoubleValues.lg.extRadius.border.all,
                                child: Image.network(
                                  'https://picsum.photos/200/300',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            AppDoubleValues.sm.extSizedbox.height,
                            const SubtitleText(
                              title: 'Curiosity',
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.bold,
                              maxLines: 2,
                            ),
                            AppDoubleValues.sm.extSizedbox.height,
                            const LabelText(
                              title: 'Front Hazard Avoidance Camera',
                              textAlign: TextAlign.center,
                              maxLines: 2,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
