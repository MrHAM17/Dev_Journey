package com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.model.QueueModel
import com.tunecastmusicstreamingpodcastapp.app.modules.queue.`data`.model.QueueRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class QueueVM : ViewModel(), KoinComponent {
  val queueModel: MutableLiveData<QueueModel> = MutableLiveData(QueueModel())

  var navArguments: Bundle? = null

  val queueList: MutableLiveData<MutableList<QueueRowModel>> = MutableLiveData(mutableListOf())
}
