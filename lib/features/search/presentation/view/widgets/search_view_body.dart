import 'package:flutter/material.dart';
import 'package:store/core/custom_widgets/custom_text_widget.dart';
import 'package:store/features/search/presentation/view/widgets/custom_text_field.dart';
import 'package:store/features/search/presentation/view/widgets/search_result_list_view.dart';

class SearchViewBody extends StatefulWidget {
  const SearchViewBody({super.key});

  @override
  State<SearchViewBody> createState() => _SearchViewBodyState();
}

class _SearchViewBodyState extends State<SearchViewBody> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric( horizontal: 10),
      child: Column(
        children: [
          SizedBox(height: size.height*0.05,),
          CustomTextField(
            controller: searchController,
            clearFun: () {
              searchController.clear();
              FocusScope.of(context).unfocus();
            },
            onChanged: (value) {},
            onSubmitted: (value) {},
          ),
          SizedBox(height: size.height*0.01,),
           const Align(
               alignment: Alignment.topLeft,
               child:  CustomTextWidget(title:'Search Result')),
           SizedBox(height: size.height*0.01,),
          const Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
