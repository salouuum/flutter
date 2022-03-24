import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course/layout/news_app/cubit/states.dart';
class NewsCubit extends Cubit<NewsStates> {
  NewsCubit() : super(NewsIntialStates());
  static NewsCubit get (context) => BlocProvider.of(context);
  int currentindex = 0;
  List<BottomNavigationBarItem> navbaritems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.business_center),
      label: 'Business',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.sports),
      label: 'Sports',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.science),
      label: 'Science',
    ),
  ];
}
