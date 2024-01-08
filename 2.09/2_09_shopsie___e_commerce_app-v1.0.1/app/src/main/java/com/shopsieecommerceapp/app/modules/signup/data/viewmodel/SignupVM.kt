package com.shopsieecommerceapp.app.modules.signup.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.shopsieecommerceapp.app.modules.signup.`data`.model.SignupModel
import org.json.JSONObject
import org.koin.core.KoinComponent

class SignupVM : ViewModel(), KoinComponent {
  val signupModel: MutableLiveData<SignupModel> = MutableLiveData(SignupModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount

  var facebookAuthResponse: JSONObject = JSONObject()


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
