package com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.logoutmodal.`data`.model.LogoutModalModel
import org.koin.core.KoinComponent

class LogoutModalVM : ViewModel(), KoinComponent {
  val logoutModalModel: MutableLiveData<LogoutModalModel> = MutableLiveData(LogoutModalModel())

  var navArguments: Bundle? = null
}
