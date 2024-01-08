package com.housitbuyrentsellproperty.app.modules.registerformempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.housitbuyrentsellproperty.app.modules.registerformempty.`data`.model.RegisterFormEmptyModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class RegisterFormEmptyVM : ViewModel(), KoinComponent {
  val registerFormEmptyModel: MutableLiveData<RegisterFormEmptyModel> =
      MutableLiveData(RegisterFormEmptyModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
