import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterblocfoodproductapp/bloc/authentication/authentication_bloc.dart';
import 'package:flutterblocfoodproductapp/presentation/screens/welcome.dart';
import 'package:flutterblocfoodproductapp/utils/theme.dart';
import 'package:sizer/sizer.dart';

void main() {
  Bloc.observer = SimpleBlocDelegate();
  runApp(MyApp());
}

class SimpleBlocDelegate extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: FoodEcommerceTheme.of(context),
        home: BlocProvider<AuthenticationBloc>(
          create: (context) {
            return AuthenticationBloc()..add(AppStarted());
          },
          child: SafeArea(
            child: Scaffold(
              body: _AppWrapper(),
            ),
          ),
        ),
      );
    });
  }
}

class _AppWrapper extends StatefulWidget {
  @override
  __AppWrapperState createState() => __AppWrapperState();
}

class __AppWrapperState extends State<_AppWrapper> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenticationBloc, AuthenticationState>(
      builder: (context, state) {
        if (state is Uninitialized) {
          return Container(child: Text("Loading"));
        } else if (state is Authenticated) {
          return Container(
            child: Text("Authenticated"),
          );
        } else if (state is UnAuthenticated) {
          return Welcome();
        }
        return SplashScreen();
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(child: Text("Splash Screen"));
  }
}
