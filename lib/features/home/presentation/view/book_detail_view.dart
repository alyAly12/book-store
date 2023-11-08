import 'package:flutter/material.dart';
import 'package:store/features/home/presentation/view/widgets/book_detail_view_body.dart';

class BookDetailView extends StatelessWidget {
  const BookDetailView({super.key});
static String id ='BookDetailView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailViewBody(),
    );
  }
}
