package com.helthiotelehealth.app.modules.login.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.helthiotelehealth.app.modules.login.`data`.model.LoginModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class LoginVM : ViewModel(), KoinComponent {
  val loginModel: MutableLiveData<LoginModel> = MutableLiveData(LoginModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
