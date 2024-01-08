package com.healthcare.app.modules.dashboard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.healthcare.app.modules.dashboard.`data`.model.DashboardModel
import com.healthcare.app.modules.dashboard.`data`.model.DoctorRowModel
import com.healthcare.app.modules.dashboard.`data`.model.FortysevenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DashboardVM : ViewModel(), KoinComponent {
  val dashboardModel: MutableLiveData<DashboardModel> = MutableLiveData(DashboardModel())

  var navArguments: Bundle? = null

  val fortySevenList: MutableLiveData<MutableList<FortysevenRowModel>> =
      MutableLiveData(mutableListOf())

  val doctorList: MutableLiveData<MutableList<DoctorRowModel>> = MutableLiveData(mutableListOf())
}
