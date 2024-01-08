package com.moviestreaming.app.modules.explorenine.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.explorenine.`data`.model.ExploreNineModel
import com.moviestreaming.app.modules.explorenine.`data`.model.ExplorenineRowModel
import com.moviestreaming.app.modules.explorenine.`data`.model.Specials8RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreNineVM : ViewModel(), KoinComponent {
  val exploreNineModel: MutableLiveData<ExploreNineModel> = MutableLiveData(ExploreNineModel())

  var navArguments: Bundle? = null

  val specialsList: MutableLiveData<MutableList<Specials8RowModel>> =
      MutableLiveData(mutableListOf())

  val exploreNineList: MutableLiveData<MutableList<ExplorenineRowModel>> =
      MutableLiveData(mutableListOf())
}
