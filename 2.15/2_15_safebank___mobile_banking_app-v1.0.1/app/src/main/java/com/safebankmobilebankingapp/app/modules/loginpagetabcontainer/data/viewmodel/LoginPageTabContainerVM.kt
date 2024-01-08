package com.safebankmobilebankingapp.app.modules.loginpagetabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.loginpagetabcontainer.`data`.model.LoginPageTabContainerModel
import org.koin.core.KoinComponent

class LoginPageTabContainerVM : ViewModel(), KoinComponent {
  val loginPageTabContainerModel: MutableLiveData<LoginPageTabContainerModel> =
      MutableLiveData(LoginPageTabContainerModel())

  var navArguments: Bundle? = null
}
