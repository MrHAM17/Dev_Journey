package com.fashionistaecommerceapp.app.modules.signupsignin.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.signupsignin.`data`.model.SignUpSignInModel
import org.koin.core.KoinComponent

class SignUpSignInVM : ViewModel(), KoinComponent {
  val signUpSignInModel: MutableLiveData<SignUpSignInModel> = MutableLiveData(SignUpSignInModel())

  var navArguments: Bundle? = null
}
