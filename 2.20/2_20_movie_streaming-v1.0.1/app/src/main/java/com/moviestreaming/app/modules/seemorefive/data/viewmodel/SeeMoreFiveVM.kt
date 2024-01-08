package com.moviestreaming.app.modules.seemorefive.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.seemorefive.`data`.model.SeeMoreFiveModel
import com.moviestreaming.app.modules.seemorefive.`data`.model.SeemorefiveRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SeeMoreFiveVM : ViewModel(), KoinComponent {
  val seeMoreFiveModel: MutableLiveData<SeeMoreFiveModel> = MutableLiveData(SeeMoreFiveModel())

  var navArguments: Bundle? = null

  val seeMoreFiveList: MutableLiveData<MutableList<SeemorefiveRowModel>> =
      MutableLiveData(mutableListOf())
}
