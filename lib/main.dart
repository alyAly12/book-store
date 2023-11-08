import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/features/home/presentation/view/book_detail_view.dart';
import 'package:store/features/home/presentation/view/home_view.dart';
import 'package:store/features/search/presentation/view/search_view.dart';
import 'package:store/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const BookDoor());
}

class BookDoor extends StatelessWidget {
  const BookDoor({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      initialRoute: SplashView.id,
      routes: {
        SplashView.id:(context)=>const SplashView(),
        HomeView.id:(context)=>const HomeView(),
        BookDetailView.id:(context)=>const BookDetailView(),
        SearchView.id:(context)=>const SearchView(),
      },
    );
  }
}

