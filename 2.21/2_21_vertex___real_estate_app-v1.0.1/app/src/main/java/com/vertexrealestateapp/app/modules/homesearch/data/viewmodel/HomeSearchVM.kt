package com.vertexrealestateapp.app.modules.homesearch.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.homesearch.`data`.model.HomeSearchModel
import com.vertexrealestateapp.app.modules.homesearch.`data`.model.HomesearchRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeSearchVM : ViewModel(), KoinComponent {
  val homeSearchModel: MutableLiveData<HomeSearchModel> = MutableLiveData(HomeSearchModel())

  var navArguments: Bundle? = null

  val homeSearchList: MutableLiveData<MutableList<HomesearchRowModel>> =
      MutableLiveData(mutableListOf())
}
