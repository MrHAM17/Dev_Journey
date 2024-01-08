package com.moviestreaming.app.modules.seemoresix.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.seemoresix.`data`.model.SeeMoreSixModel
import com.moviestreaming.app.modules.seemoresix.`data`.model.SeemoresixRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SeeMoreSixVM : ViewModel(), KoinComponent {
  val seeMoreSixModel: MutableLiveData<SeeMoreSixModel> = MutableLiveData(SeeMoreSixModel())

  var navArguments: Bundle? = null

  val seeMoreSixList: MutableLiveData<MutableList<SeemoresixRowModel>> =
      MutableLiveData(mutableListOf())
}
