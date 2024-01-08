package com.shopsieecommerceapp.app.modules.userprofiletabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.userprofiletabcontainer.`data`.model.UserProfileTabContainerModel
import org.koin.core.KoinComponent

class UserProfileTabContainerVM : ViewModel(), KoinComponent {
  val userProfileTabContainerModel: MutableLiveData<UserProfileTabContainerModel> =
      MutableLiveData(UserProfileTabContainerModel())

  var navArguments: Bundle? = null
}
