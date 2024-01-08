package com.shopsieecommerceapp.app.modules.login.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.shopsieecommerceapp.app.modules.login.`data`.model.LoginModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class LoginVM : ViewModel(), KoinComponent {
  val loginModel: MutableLiveData<LoginModel> = MutableLiveData(LoginModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount

  var facebookAuthResponse: JSONObject = JSONObject()
}
