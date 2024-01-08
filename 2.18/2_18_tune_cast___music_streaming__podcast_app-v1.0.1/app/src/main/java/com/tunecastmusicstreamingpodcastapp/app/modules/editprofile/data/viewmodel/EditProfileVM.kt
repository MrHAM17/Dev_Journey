package com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.dhi0.`data`.model.Dhi0Model
import com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.model.EditProfileModel
import com.tunecastmusicstreamingpodcastapp.app.modules.editprofile.`data`.model.SpinnerInputFieldsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class EditProfileVM : ViewModel(), KoinComponent {
  val editProfileModel: MutableLiveData<EditProfileModel> = MutableLiveData(EditProfileModel())

  var navArguments: Bundle? = null

  public var includedModel: MutableLiveData<Dhi0Model> = MutableLiveData(Dhi0Model())

  val spinnerInputFieldsList: MutableLiveData<MutableList<SpinnerInputFieldsModel>> =
      MutableLiveData()
}
