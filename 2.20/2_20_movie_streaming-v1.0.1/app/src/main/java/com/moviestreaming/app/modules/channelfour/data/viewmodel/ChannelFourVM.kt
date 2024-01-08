package com.moviestreaming.app.modules.channelfour.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.channelfour.`data`.model.ChannelFourModel
import com.moviestreaming.app.modules.channelfour.`data`.model.ChannelfourRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChannelFourVM : ViewModel(), KoinComponent {
  val channelFourModel: MutableLiveData<ChannelFourModel> = MutableLiveData(ChannelFourModel())

  var navArguments: Bundle? = null

  val channelFourList: MutableLiveData<MutableList<ChannelfourRowModel>> =
      MutableLiveData(mutableListOf())
}
