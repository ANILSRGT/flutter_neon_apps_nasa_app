part of '../explore_page_imports.dart';

class _ExplorePageFilters extends StatelessWidget {
  const _ExplorePageFilters();

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        children: [
          const Expanded(
            child: SearchBar(),
          ),
          AppDoubleValues.md.extSizedbox.width,
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
    );
  }
}
