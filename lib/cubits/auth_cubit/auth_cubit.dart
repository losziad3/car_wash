import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:car_wash/cubits/auth_cubit/auth_state.dart';

class Authcubit extends Cubit <Authstate>{
  Authcubit() : super(AuthIntialstate());

  void register({required String email,required String phone,required String password}) async {
    emit(RegisterLoadingstate());

    http.Response response=  await http.post(Uri.parse("http://62.233.53.108:3000/api/client/register"),body:
    {
      "email": email,
      "phone":phone,
      "password":password,
    });

    Map<String,dynamic> data=jsonDecode(response.body);
    if(data['message']== true){
      print(response.body);
      emit(Registersucessstate());
    }
    else(

        emit(Registerfaliurestate())
    );
  }


  void Login({required String email,required String password}) async{
    emit(LoginLoadingstate());
    try{
      http.Response response=await http.post(Uri.parse("http://62.233.53.108:3000/api/client/login"),body:
      {
        "email":email,
        "password":password
      }
      );
      if(response.statusCode==200){
        var data=jsonDecode(response.body);
        if(data['message']==""){///////////////////////////////// lazm hna a3mlhaaa
          emit(LoginSuccessstate());
        }
        else{
          debugPrint("Failed to login, reason is:${data['message']}");
          emit(LoginFaliurestate());
        }
      }
    }
    catch(e){
      emit(LoginFaliurestate());
    }
  }
  void Verify({required String email,required String verificationCode}) async {
    try{
      http.Response response =await http.post(Uri.parse("http://62.233.53.108:3000/api/client/activate"),body:{
        "email" :email,
        "verificationCode":verificationCode,
      } );
      if(response.statusCode==200)
      {
        var data=jsonDecode(response.body);
        if(data['message']=="")
        {
          emit(Verifyuccessstate());
        }
        else{
          debugPrint("Failed to login, reason is:${data['message']}");
          emit(Verifyaliurestate());
        }
      }
    }catch(e){
      emit(Verifyaliurestate());
    }
  }
}