package com.housitbuyrentsellproperty.app.modules.vertical.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.vertical.`data`.model.VerticalModel
import com.housitbuyrentsellproperty.app.modules.vertical.`data`.model.VerticalRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class VerticalVM : ViewModel(), KoinComponent {
  val verticalModel: MutableLiveData<VerticalModel> = MutableLiveData(VerticalModel())

  var navArguments: Bundle? = null

  val verticalList: MutableLiveData<MutableList<VerticalRowModel>> =
      MutableLiveData(mutableListOf())
}
