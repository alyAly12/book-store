import 'package:flutter/material.dart';
import 'package:store/features/search/presentation/view/widgets/search_view_body.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});
static String id = 'search-view';
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        FocusScope.of(context).unfocus();
      },
      child: const Scaffold(
        body: SearchViewBody(),
      ),
    );
  }
}
