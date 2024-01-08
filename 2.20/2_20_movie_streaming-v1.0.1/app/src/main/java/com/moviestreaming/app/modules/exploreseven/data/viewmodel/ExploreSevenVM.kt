package com.moviestreaming.app.modules.exploreseven.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.ExploreSevenModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.IoRowModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.Specials7RowModel
import com.moviestreaming.app.modules.exploreseven.`data`.model.TurnerhoochRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreSevenVM : ViewModel(), KoinComponent {
  val exploreSevenModel: MutableLiveData<ExploreSevenModel> = MutableLiveData(ExploreSevenModel())

  var navArguments: Bundle? = null

  val specialsList: MutableLiveData<MutableList<Specials7RowModel>> =
      MutableLiveData(mutableListOf())

  val iOList: MutableLiveData<MutableList<IoRowModel>> = MutableLiveData(mutableListOf())

  val turnerHoochList: MutableLiveData<MutableList<TurnerhoochRowModel>> =
      MutableLiveData(mutableListOf())
}
