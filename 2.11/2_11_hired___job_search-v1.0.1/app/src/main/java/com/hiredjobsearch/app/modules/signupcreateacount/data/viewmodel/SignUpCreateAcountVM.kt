package com.hiredjobsearch.app.modules.signupcreateacount.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.hiredjobsearch.app.modules.signupcreateacount.`data`.model.SignUpCreateAcountModel
import org.koin.core.KoinComponent

class SignUpCreateAcountVM : ViewModel(), KoinComponent {
  val signUpCreateAcountModel: MutableLiveData<SignUpCreateAcountModel> =
      MutableLiveData(SignUpCreateAcountModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount
}
