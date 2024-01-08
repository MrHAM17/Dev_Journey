package com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.model.Layout4RowModel
import com.housitbuyrentsellproperty.app.modules.resultfilter.`data`.model.ResultFilterModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ResultFilterVM : ViewModel(), KoinComponent {
  val resultFilterModel: MutableLiveData<ResultFilterModel> = MutableLiveData(ResultFilterModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout4RowModel>> = MutableLiveData(mutableListOf())
}
