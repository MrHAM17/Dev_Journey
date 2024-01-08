package com.moviestreaming.app.modules.seemoreseven.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.seemoreseven.`data`.model.SeeMoreSevenModel
import com.moviestreaming.app.modules.seemoreseven.`data`.model.SeemoresevenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SeeMoreSevenVM : ViewModel(), KoinComponent {
  val seeMoreSevenModel: MutableLiveData<SeeMoreSevenModel> = MutableLiveData(SeeMoreSevenModel())

  var navArguments: Bundle? = null

  val seeMoreSevenList: MutableLiveData<MutableList<SeemoresevenRowModel>> =
      MutableLiveData(mutableListOf())
}
