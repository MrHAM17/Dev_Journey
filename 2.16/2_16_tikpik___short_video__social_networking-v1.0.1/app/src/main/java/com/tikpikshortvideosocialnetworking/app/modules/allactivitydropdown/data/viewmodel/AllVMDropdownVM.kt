package com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.model.AllModelDropdownModel
import com.tikpikshortvideosocialnetworking.app.modules.allactivitydropdown.`data`.model.SpinnerChooseModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AllVMDropdownVM : ViewModel(), KoinComponent {
  val allModelDropdownModel: MutableLiveData<AllModelDropdownModel> =
      MutableLiveData(AllModelDropdownModel())

  var navArguments: Bundle? = null

  val spinnerChooseList: MutableLiveData<MutableList<SpinnerChooseModel>> = MutableLiveData()
}
