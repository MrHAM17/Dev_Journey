package com.hiredjobsearch.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.hiredjobsearch.app.modules.home.`data`.model.EightyeightRowModel
import com.hiredjobsearch.app.modules.home.`data`.model.FrameRowModel
import com.hiredjobsearch.app.modules.home.`data`.model.HomeModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())

  val eightyEightList: MutableLiveData<MutableList<EightyeightRowModel>> =
      MutableLiveData(mutableListOf())
}
