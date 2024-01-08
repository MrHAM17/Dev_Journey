package com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.model.AutolayoutverticalRowModel
import com.tikpikshortvideosocialnetworking.app.modules.profiletwo.`data`.model.ProfileTwoModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProfileTwoVM : ViewModel(), KoinComponent {
  val profileTwoModel: MutableLiveData<ProfileTwoModel> = MutableLiveData(ProfileTwoModel())

  var navArguments: Bundle? = null

  val autoLayoutVerticalList: MutableLiveData<MutableList<AutolayoutverticalRowModel>> =
      MutableLiveData(mutableListOf())
}
