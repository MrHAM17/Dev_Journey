package com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model.ProfileAddressDetailsModel
import com.shopsieecommerceapp.app.modules.profileaddressdetails.`data`.model.ProfileaddressdetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProfileAddressDetailsVM : ViewModel(), KoinComponent {
  val profileAddressDetailsModel: MutableLiveData<ProfileAddressDetailsModel> =
      MutableLiveData(ProfileAddressDetailsModel())

  var navArguments: Bundle? = null

  val profileAddressdetailsList: MutableLiveData<MutableList<ProfileaddressdetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
