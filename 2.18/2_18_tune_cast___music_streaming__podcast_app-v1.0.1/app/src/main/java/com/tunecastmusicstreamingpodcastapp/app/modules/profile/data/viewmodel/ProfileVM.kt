package com.tunecastmusicstreamingpodcastapp.app.modules.profile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.dhi0.`data`.model.Dhi0Model
import com.tunecastmusicstreamingpodcastapp.app.modules.profile.`data`.model.ProfileModel
import org.koin.core.KoinComponent

class ProfileVM : ViewModel(), KoinComponent {
  val profileModel: MutableLiveData<ProfileModel> = MutableLiveData(ProfileModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Dhi0Model> = MutableLiveData(Dhi0Model())
}
