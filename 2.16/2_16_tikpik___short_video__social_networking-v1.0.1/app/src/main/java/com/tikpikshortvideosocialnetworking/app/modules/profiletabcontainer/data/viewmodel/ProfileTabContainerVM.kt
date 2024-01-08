package com.tikpikshortvideosocialnetworking.app.modules.profiletabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.profiletabcontainer.`data`.model.ProfileTabContainerModel
import org.koin.core.KoinComponent

class ProfileTabContainerVM : ViewModel(), KoinComponent {
  val profileTabContainerModel: MutableLiveData<ProfileTabContainerModel> =
      MutableLiveData(ProfileTabContainerModel())

  var navArguments: Bundle? = null
}
