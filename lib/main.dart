import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp_flutter_axum/pages/Intial_screen.dart';
import 'package:todoapp_flutter_axum/app_bloc_observer.dart';
import 'package:todoapp_flutter_axum/bloc/auth_bloc.dart';
import 'package:todoapp_flutter_axum/login_screen.dart';
import 'package:todoapp_flutter_axum/pages/add_todo_page.dart';
import 'package:todoapp_flutter_axum/pages/home_page.dart';
import 'package:todoapp_flutter_axum/pages/signin_screen.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(),
        ),
        
      ],
      child:  const MaterialApp(
        home: AddTodoPage(),
      ),
    );
  }
}
