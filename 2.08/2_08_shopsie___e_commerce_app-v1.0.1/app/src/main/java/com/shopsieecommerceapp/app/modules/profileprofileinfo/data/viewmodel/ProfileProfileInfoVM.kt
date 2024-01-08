package com.shopsieecommerceapp.app.modules.profileprofileinfo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.profileprofileinfo.`data`.model.ProfileProfileInfoModel
import org.koin.core.KoinComponent

class ProfileProfileInfoVM : ViewModel(), KoinComponent {
  val profileProfileInfoModel: MutableLiveData<ProfileProfileInfoModel> =
      MutableLiveData(ProfileProfileInfoModel())

  var navArguments: Bundle? = null
}
