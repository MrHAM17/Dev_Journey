package com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model.SubscribeModel
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model.SubscribeRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SubscribeVM : ViewModel(), KoinComponent {
  val subscribeModel: MutableLiveData<SubscribeModel> = MutableLiveData(SubscribeModel())

  var navArguments: Bundle? = null

  val subscribeList: MutableLiveData<MutableList<SubscribeRowModel>> =
      MutableLiveData(mutableListOf())
}
