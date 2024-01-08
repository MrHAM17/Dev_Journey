package com.housitbuyrentsellproperty.app.modules.exampledata.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.exampledata.`data`.model.ExampleDataModel
import com.housitbuyrentsellproperty.app.modules.exampledata.`data`.model.LayoutRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ExampleDataVM : ViewModel(), KoinComponent {
  val exampleDataModel: MutableLiveData<ExampleDataModel> = MutableLiveData(ExampleDataModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<LayoutRowModel>> = MutableLiveData(mutableListOf())
}
