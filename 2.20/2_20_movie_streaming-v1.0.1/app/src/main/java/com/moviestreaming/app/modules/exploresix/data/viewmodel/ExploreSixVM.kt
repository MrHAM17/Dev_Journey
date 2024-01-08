package com.moviestreaming.app.modules.exploresix.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.exploresix.`data`.model.ExploreSixModel
import com.moviestreaming.app.modules.exploresix.`data`.model.ExploresixRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExploreSixVM : ViewModel(), KoinComponent {
  val exploreSixModel: MutableLiveData<ExploreSixModel> = MutableLiveData(ExploreSixModel())

  var navArguments: Bundle? = null

  val exploreSixList: MutableLiveData<MutableList<ExploresixRowModel>> =
      MutableLiveData(mutableListOf())
}
