import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todoapp_flutter_axum/bloc/auth_bloc.dart';
import 'package:todoapp_flutter_axum/login_screen.dart';
import 'package:todoapp_flutter_axum/widgets/gradient_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthInitial) {
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) =>  LoginScreen()), (route) => false);
          }

        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              Center(child: Text((state as AuthSuccess).uid)),
              const SizedBox(
                height: 10,
              ),
              GradientButton(onPressed: () {
                context.read<AuthBloc>().add(AuthLogoutButtonPressed());
              })
            ],
          );
        },
      ),
    );
  }
}
