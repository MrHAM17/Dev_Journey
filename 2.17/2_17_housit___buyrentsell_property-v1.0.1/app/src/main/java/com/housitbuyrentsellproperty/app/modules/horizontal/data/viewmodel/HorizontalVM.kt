package com.housitbuyrentsellproperty.app.modules.horizontal.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.horizontal.`data`.model.HorizontalModel
import com.housitbuyrentsellproperty.app.modules.horizontal.`data`.model.HorizontalRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HorizontalVM : ViewModel(), KoinComponent {
  val horizontalModel: MutableLiveData<HorizontalModel> = MutableLiveData(HorizontalModel())

  var navArguments: Bundle? = null

  val horizontalList: MutableLiveData<MutableList<HorizontalRowModel>> =
      MutableLiveData(mutableListOf())
}
