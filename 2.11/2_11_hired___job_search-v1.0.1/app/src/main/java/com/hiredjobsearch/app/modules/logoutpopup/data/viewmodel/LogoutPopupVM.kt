package com.hiredjobsearch.app.modules.logoutpopup.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.logoutpopup.`data`.model.LogoutPopupModel
import org.koin.core.KoinComponent

class LogoutPopupVM : ViewModel(), KoinComponent {
  val logoutPopupModel: MutableLiveData<LogoutPopupModel> = MutableLiveData(LogoutPopupModel())

  var navArguments: Bundle? = null
}
