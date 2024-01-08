package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model.ProfileDetailsModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetails.`data`.model.ProfiledetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProfileDetailsVM : ViewModel(), KoinComponent {
  val profileDetailsModel: MutableLiveData<ProfileDetailsModel> =
      MutableLiveData(ProfileDetailsModel())

  var navArguments: Bundle? = null

  val profileDetailsList: MutableLiveData<MutableList<ProfiledetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
