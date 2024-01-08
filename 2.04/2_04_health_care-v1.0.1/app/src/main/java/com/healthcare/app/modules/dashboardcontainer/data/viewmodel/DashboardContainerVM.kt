package com.healthcare.app.modules.dashboardcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.healthcare.app.modules.dashboardcontainer.`data`.model.DashboardContainerModel
import org.koin.core.KoinComponent

class DashboardContainerVM : ViewModel(), KoinComponent {
  val dashboardContainerModel: MutableLiveData<DashboardContainerModel> =
      MutableLiveData(DashboardContainerModel())

  var navArguments: Bundle? = null
}
