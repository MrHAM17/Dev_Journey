package com.shopsieecommerceapp.app.modules.profilesecurity.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.profilesecurity.`data`.model.ProfileSecurityModel
import org.koin.core.KoinComponent

class ProfileSecurityVM : ViewModel(), KoinComponent {
  val profileSecurityModel: MutableLiveData<ProfileSecurityModel> =
      MutableLiveData(ProfileSecurityModel())

  var navArguments: Bundle? = null
}
