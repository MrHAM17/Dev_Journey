package com.tikpikshortvideosocialnetworking.app.modules.signupblankform.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.google.android.gms.auth.api.signin.GoogleSignInAccount
import com.tikpikshortvideosocialnetworking.app.modules.signupblankform.`data`.model.SignUpBlankFormModel
import org.koin.core.KoinComponent

class SignUpBlankFormVM : ViewModel(), KoinComponent {
  val signUpBlankFormModel: MutableLiveData<SignUpBlankFormModel> =
      MutableLiveData(SignUpBlankFormModel())


  var navArguments: Bundle? = null


  lateinit var googleAuthResponse: GoogleSignInAccount
}
