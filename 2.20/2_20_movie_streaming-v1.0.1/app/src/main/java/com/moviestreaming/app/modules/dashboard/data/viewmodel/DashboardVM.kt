package com.moviestreaming.app.modules.dashboard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.dashboard.`data`.model.DashboardModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials1RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials2RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials3RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials4RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.Specials5RowModel
import com.moviestreaming.app.modules.dashboard.`data`.model.SpecialsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DashboardVM : ViewModel(), KoinComponent {
  val dashboardModel: MutableLiveData<DashboardModel> = MutableLiveData(DashboardModel())

  var navArguments: Bundle? = null

  val specialsList: MutableLiveData<MutableList<SpecialsRowModel>> =
      MutableLiveData(mutableListOf())

  val specials1List: MutableLiveData<MutableList<Specials1RowModel>> =
      MutableLiveData(mutableListOf())

  val specials2List: MutableLiveData<MutableList<Specials2RowModel>> =
      MutableLiveData(mutableListOf())

  val specials3List: MutableLiveData<MutableList<Specials3RowModel>> =
      MutableLiveData(mutableListOf())

  val specials4List: MutableLiveData<MutableList<Specials4RowModel>> =
      MutableLiveData(mutableListOf())

  val specials5List: MutableLiveData<MutableList<Specials5RowModel>> =
      MutableLiveData(mutableListOf())
}
