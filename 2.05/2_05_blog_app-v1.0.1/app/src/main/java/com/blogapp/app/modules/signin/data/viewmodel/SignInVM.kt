package com.blogapp.app.modules.signin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.blogapp.app.modules.signin.`data`.model.SignInModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import org.json.JSONObject
import org.koin.core.KoinComponent

class SignInVM : ViewModel(), KoinComponent {
  val signInModel: MutableLiveData<SignInModel> = MutableLiveData(SignInModel())


  var navArguments: Bundle? = null


  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount

  var facebookAuthResponse: JSONObject = JSONObject()


  lateinit var googleAuthResponse: GoogleSignInAccount
}
