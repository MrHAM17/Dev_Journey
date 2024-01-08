package com.moviestreaming.app.modules.channelsix.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.channelsix.`data`.model.ChannelSixModel
import com.moviestreaming.app.modules.channelsix.`data`.model.ChannelsixRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ChannelSixVM : ViewModel(), KoinComponent {
  val channelSixModel: MutableLiveData<ChannelSixModel> = MutableLiveData(ChannelSixModel())

  var navArguments: Bundle? = null

  val channelSixList: MutableLiveData<MutableList<ChannelsixRowModel>> =
      MutableLiveData(mutableListOf())
}
