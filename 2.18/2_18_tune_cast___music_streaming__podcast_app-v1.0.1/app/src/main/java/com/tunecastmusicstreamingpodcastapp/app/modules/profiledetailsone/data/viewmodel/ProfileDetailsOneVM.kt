package com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model.ProfileDetailsOneModel
import com.tunecastmusicstreamingpodcastapp.app.modules.profiledetailsone.`data`.model.ProfiledetailsoneRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProfileDetailsOneVM : ViewModel(), KoinComponent {
  val profileDetailsOneModel: MutableLiveData<ProfileDetailsOneModel> =
      MutableLiveData(ProfileDetailsOneModel())

  var navArguments: Bundle? = null

  val profileDetailsOneList: MutableLiveData<MutableList<ProfiledetailsoneRowModel>> =
      MutableLiveData(mutableListOf())
}
