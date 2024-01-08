package com.housitbuyrentsellproperty.app.modules.userempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.userempty.`data`.model.UserEmptyModel
import org.koin.core.KoinComponent

class UserEmptyVM : ViewModel(), KoinComponent {
  val userEmptyModel: MutableLiveData<UserEmptyModel> = MutableLiveData(UserEmptyModel())

  var navArguments: Bundle? = null
}
