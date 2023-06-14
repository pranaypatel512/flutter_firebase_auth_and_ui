// Copyright 2022 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.


import 'package:firebase_ui_auth/firebase_ui_auth.dart'; 
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart'; 

import 'app_state.dart'; 
import 'guest_book.dart';                         
import 'home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: ((context, child) => const App())));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Firebase Meetup',
      theme: ThemeData(
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
              highlightColor: Colors.deepPurple,
            ),
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.robotoTextTheme(
          Theme.of(context).textTheme,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      routerConfig: _goRouter,
    );
  }
}

final _goRouter = GoRouter(routes: [
  GoRoute(path: '/', builder: (context, state) => const HomePage(), routes: [
    GoRoute(
        path: 'sign-in',
        builder: (context, state) {
          return SignInScreen(
            actions: [
              ForgotPasswordAction((context, email) {
                final uri = Uri(
                    path: "/sign-in/forgot-password",
                    queryParameters: <String, String?>{'email': email});
                context.push(uri.toString());
              }),
              AuthStateChangeAction(
                (context, state) {
                  final user = switch (state) {
                    SignedIn state => state.user,
                    UserCreated state => state.credential.user,
                    _ => null
                  };
                  if (user == null) {
                    return;
                  }
                  if (state is UserCreated) {
                    user.updateDisplayName(user.email!.split('@')[0]);
                  }
                  if (!user.emailVerified) {
                    user.sendEmailVerification();
                    const snakeBar = SnackBar(
                        content: Text(
                            "Please check your email to verify your email address"));
                    context.pushReplacement('/');
                  }
                },
              )
            ],
          );
        },
        routes: [
          GoRoute(
            path: "forgot-password",
            builder: (context, state) {
              final argument = state.queryParameters;
              return ForgotPasswordScreen(
                email: argument['email'],
                headerMaxExtent: 200,
              );
            },
          )
        ]),
    GoRoute(
      path: 'profile',
      builder: (context, state) {
        return ProfileScreen(
          providers: [],
          actions: [
            SignedOutAction((context) {
              context.pushReplacement('/');
            })
          ],
        );
      },
    )
  ])
]);
