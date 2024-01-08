package com.moviestreaming.app.modules.channelfive.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.channelfive.`data`.model.ChannelFiveModel
import com.moviestreaming.app.modules.channelfive.`data`.model.Movies6RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChannelFiveVM : ViewModel(), KoinComponent {
  val channelFiveModel: MutableLiveData<ChannelFiveModel> = MutableLiveData(ChannelFiveModel())

  var navArguments: Bundle? = null

  val moviesList: MutableLiveData<MutableList<Movies6RowModel>> = MutableLiveData(mutableListOf())
}
