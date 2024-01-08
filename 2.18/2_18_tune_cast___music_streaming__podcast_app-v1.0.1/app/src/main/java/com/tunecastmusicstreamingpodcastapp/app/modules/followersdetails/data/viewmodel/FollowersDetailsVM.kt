package com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.FollowersDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.Following1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.followersdetails.`data`.model.NinetyfiveRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class FollowersDetailsVM : ViewModel(), KoinComponent {
  val followersDetailsModel: MutableLiveData<FollowersDetailsModel> =
      MutableLiveData(FollowersDetailsModel())

  var navArguments: Bundle? = null

  val ninetyFiveList: MutableLiveData<MutableList<NinetyfiveRowModel>> =
      MutableLiveData(mutableListOf())

  val followingList: MutableLiveData<MutableList<Following1RowModel>> =
      MutableLiveData(mutableListOf())
}
