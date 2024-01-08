package com.comforthotelbookingapp.app.modules.signupblank.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.signupblank.`data`.model.SignUpBlankModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import org.json.JSONObject
import org.koin.core.KoinComponent

class SignUpBlankVM : ViewModel(), KoinComponent {
  val signUpBlankModel: MutableLiveData<SignUpBlankModel> = MutableLiveData(SignUpBlankModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount

  var facebookAuthResponse: JSONObject = JSONObject()
}
