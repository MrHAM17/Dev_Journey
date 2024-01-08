package com.shopsieecommerceapp.app.modules.profileprofileinfotabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.profileprofileinfotabcontainer.`data`.model.ProfileProfileInfoTabContainerModel
import org.koin.core.KoinComponent

class ProfileProfileInfoTabContainerVM : ViewModel(), KoinComponent {
  val profileProfileInfoTabContainerModel: MutableLiveData<ProfileProfileInfoTabContainerModel> =
      MutableLiveData(ProfileProfileInfoTabContainerModel())

  var navArguments: Bundle? = null
}
