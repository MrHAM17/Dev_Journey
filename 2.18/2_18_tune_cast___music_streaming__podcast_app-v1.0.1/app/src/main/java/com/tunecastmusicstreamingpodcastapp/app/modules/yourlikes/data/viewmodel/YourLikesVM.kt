package com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.model.YourLikesModel
import com.tunecastmusicstreamingpodcastapp.app.modules.yourlikes.`data`.model.YourlikesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class YourLikesVM : ViewModel(), KoinComponent {
  val yourLikesModel: MutableLiveData<YourLikesModel> = MutableLiveData(YourLikesModel())

  var navArguments: Bundle? = null

  val yourLikesList: MutableLiveData<MutableList<YourlikesRowModel>> =
      MutableLiveData(mutableListOf())
}
