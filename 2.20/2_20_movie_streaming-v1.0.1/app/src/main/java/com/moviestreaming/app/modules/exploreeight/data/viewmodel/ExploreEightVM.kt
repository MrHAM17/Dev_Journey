package com.moviestreaming.app.modules.exploreeight.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.exploreeight.`data`.model.ExploreEightModel
import com.moviestreaming.app.modules.exploreeight.`data`.model.ExploreeightRowModel
import com.moviestreaming.app.modules.exploreeight.`data`.model.Specials6RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreEightVM : ViewModel(), KoinComponent {
  val exploreEightModel: MutableLiveData<ExploreEightModel> = MutableLiveData(ExploreEightModel())

  var navArguments: Bundle? = null

  val specialsList: MutableLiveData<MutableList<Specials6RowModel>> =
      MutableLiveData(mutableListOf())

  val exploreEightList: MutableLiveData<MutableList<ExploreeightRowModel>> =
      MutableLiveData(mutableListOf())
}
