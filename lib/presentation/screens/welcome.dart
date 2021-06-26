import 'package:flutter/material.dart';
import 'package:flutterblocfoodproductapp/utils/extension.dart';
import 'package:flutterblocfoodproductapp/utils/theme.dart';
import 'package:sizer/sizer.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData _theme = Theme.of(context);

    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: AssetImage('assets/images/background.jpeg'),
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          color: Colors.black87.withOpacity(0.2),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
          ),
        ),
        Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome to",
                      style: _theme.textTheme.headline1,
                    ),
                    SizedBox(height: AppSizes.space),
                    Text(
                      "Food Center",
                      style: _theme.textTheme.headline2,
                    ),
                    SizedBox(height: AppSizes.space),
                    Text(
                      "Your favourite foods delivered on your doorstep",
                      style: _theme.textTheme.caption!
                          .merge(TextStyle(color: AppColors.black)),
                    )
                  ],
                ),
              ),
              signInPart(_theme)
            ],
          ),
        ),
      ],
    );
  }
}

Widget signInPart(ThemeData _theme) {
  return Flexible(
    flex: 1,
    child: Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: .5,
                width: 30.w,
                color: AppColors.white,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 2 * AppSizes.space),
                  child: Text("Sign or Sign up")),
              Container(
                height: .5,
                width: 30.w,
                color: AppColors.white,
              )
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            loginApi('facebook', _theme.textTheme),
            loginApi('google', _theme.textTheme)
          ],
        ),
        _startWithUserInput(_theme.textTheme),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: _theme.textTheme.caption!
                      .merge(TextStyle(color: AppColors.white))),
              InkWell(
                child: Text(' Sign in',
                    style: _theme.textTheme.caption!
                        .merge(TextStyle(color: AppColors.white))),
              )
            ],
          ),
        )
      ],
    )),
  );
}

Widget _startWithUserInput(TextTheme _theme) {
  return InkWell(
    child: Container(
      width: 60.w,
      alignment: Alignment.center,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.1),
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
        border: Border.all(width: 2.0, color: AppColors.white),
      ),
      child: Text("Start with email or phone",
          style: _theme.caption!.merge(TextStyle(color: AppColors.white))),
    ),
  );
}

Widget loginApi(String name, TextTheme textStyle) {
  return InkWell(
    child: Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
      child: Row(children: [
        Image(
          height: 20.0,
          width: 20.0,
          image: AssetImage('assets/icons/signin/$name.png'),
        ),
        SizedBox(width: 2 * AppSizes.space),
        Text(name.toTitleCase(), style: textStyle.caption)
      ]),
    ),
  );
}
