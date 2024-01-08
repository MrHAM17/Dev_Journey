package com.housitbuyrentsellproperty.app.modules.preferable.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.preferable.`data`.model.PreferableModel
import com.housitbuyrentsellproperty.app.modules.preferable.`data`.model.PreferableRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PreferableVM : ViewModel(), KoinComponent {
  val preferableModel: MutableLiveData<PreferableModel> = MutableLiveData(PreferableModel())

  var navArguments: Bundle? = null

  val preferableList: MutableLiveData<MutableList<PreferableRowModel>> =
      MutableLiveData(mutableListOf())
}
