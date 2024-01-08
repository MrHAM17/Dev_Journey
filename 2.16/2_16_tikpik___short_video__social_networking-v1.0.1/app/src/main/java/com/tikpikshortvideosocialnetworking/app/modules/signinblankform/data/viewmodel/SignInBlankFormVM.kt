package com.tikpikshortvideosocialnetworking.app.modules.signinblankform.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.tikpikshortvideosocialnetworking.app.modules.signinblankform.`data`.model.SignInBlankFormModel
import org.koin.core.KoinComponent

class SignInBlankFormVM : ViewModel(), KoinComponent {
  val signInBlankFormModel: MutableLiveData<SignInBlankFormModel> =
      MutableLiveData(SignInBlankFormModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount
}
