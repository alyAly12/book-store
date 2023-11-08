import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.clearFun, this.onChanged, this.onSubmitted});
final TextEditingController controller;
final Function clearFun;
final void Function(String)? onChanged;
 final void Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(12),
        ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Colors.white
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: 'Search',
          prefixIcon: const Icon(IconlyLight.search,color: Colors.green,),
          suffixIcon: IconButton(
              onPressed: () {
               clearFun();
              },
              icon: const Icon(
                Icons.clear,
                color: Colors.red,
              ))),
      onChanged: (value) {
        onChanged;
      },
      onSubmitted: (value){
        onSubmitted;
        // setState(() {
        //   searchProductList =productProvider.searchQuery(
        //       searchText: searchController.text,
        //       passedList: productList
        //   );
        // });
      },
    );
  }
}
