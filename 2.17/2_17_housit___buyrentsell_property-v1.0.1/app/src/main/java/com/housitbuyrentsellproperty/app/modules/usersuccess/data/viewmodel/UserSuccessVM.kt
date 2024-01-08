package com.housitbuyrentsellproperty.app.modules.usersuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.usersuccess.`data`.model.UserSuccessModel
import org.koin.core.KoinComponent

class UserSuccessVM : ViewModel(), KoinComponent {
  val userSuccessModel: MutableLiveData<UserSuccessModel> = MutableLiveData(UserSuccessModel())

  var navArguments: Bundle? = null
}
