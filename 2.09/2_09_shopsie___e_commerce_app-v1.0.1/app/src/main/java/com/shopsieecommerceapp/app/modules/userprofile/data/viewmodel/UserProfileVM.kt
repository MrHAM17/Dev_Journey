package com.shopsieecommerceapp.app.modules.userprofile.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.userprofile.`data`.model.UserProfileModel
import org.koin.core.KoinComponent

class UserProfileVM : ViewModel(), KoinComponent {
  val userProfileModel: MutableLiveData<UserProfileModel> = MutableLiveData(UserProfileModel())

  var navArguments: Bundle? = null
}
