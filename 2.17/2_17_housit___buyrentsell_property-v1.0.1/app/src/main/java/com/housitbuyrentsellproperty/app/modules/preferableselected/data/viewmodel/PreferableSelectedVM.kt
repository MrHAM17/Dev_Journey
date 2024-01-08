package com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model.PreferableSelectedModel
import com.housitbuyrentsellproperty.app.modules.preferableselected.`data`.model.PreferableselectedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PreferableSelectedVM : ViewModel(), KoinComponent {
  val preferableSelectedModel: MutableLiveData<PreferableSelectedModel> =
      MutableLiveData(PreferableSelectedModel())

  var navArguments: Bundle? = null

  val preferableSelectedList: MutableLiveData<MutableList<PreferableselectedRowModel>> =
      MutableLiveData(mutableListOf())
}
