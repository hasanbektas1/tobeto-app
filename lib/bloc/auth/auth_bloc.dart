import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tobeto_app/bloc/auth/auth_event.dart';
import 'package:tobeto_app/bloc/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firebaseFirestore;

  AuthBloc({
    FirebaseAuth? firebaseAuth,
    FirebaseFirestore? firebaseFirestore,
  })  : _firebaseAuth = firebaseAuth ?? FirebaseAuth.instance,
        _firebaseFirestore = firebaseFirestore ?? FirebaseFirestore.instance,
        super(AuthInitial()) {
    print("AuthBloc----AuthInitial-------------------------");

    _firebaseAuth.authStateChanges().listen(
      (user) {
        if (user != null) {
          emit(Authenticated(user: user));
        } else {
          emit(NotAuthenticated());
        }
      },
    );
    on<Login>((event, emit) async {
      print("AuthBloc----Login-------------------------");

      try {
        UserCredential userCredential =
            await _firebaseAuth.signInWithEmailAndPassword(
                email: event.email, password: event.password);
        emit(Authenticated(user: userCredential.user));
      } on FirebaseAuthException catch (e) {
        emit(NotAuthenticated(errorMessage: e.message));
      }
    });
    on<Register>(
      (event, emit) async {
        print("AuthBloc----Register-------------------------");

        emit(NotAuthenticated());

        try {
          UserCredential userCredential =
              await _firebaseAuth.createUserWithEmailAndPassword(
            email: event.email,
            password: event.password,
          );
          await _firebaseFirestore
              .collection("users")
              .doc(userCredential.user!.uid)
              .set({
            'email': event.email,
            'applicationStatus': event.applicationstatus,
            'username': event.username,
            'department': event.department,
            'registerDate': DateTime.now(),
            'about': '',
            'phoneNumber': event.phoneNumber
          });
        } on FirebaseAuthException catch (e) {}
      },
    );

    on<Logout>((event, emit) async {
      await _firebaseAuth.signOut();
    });

    on<ResetPassword>((event, emit) async {
      try {
        await _firebaseAuth.sendPasswordResetEmail(email: event.email);
        print('şifre sıfırlama gönderildi');
        emit(PasswordResetEmailSent());
      } catch (e) {
        emit(PasswordResetError(errorMessage: e.toString()));
      }
    });
  }
}
