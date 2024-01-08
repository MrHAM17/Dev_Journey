package com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.model.TopLocationsLocationDetailModel
import com.housitbuyrentsellproperty.app.modules.toplocationslocationdetail.`data`.model.ToplocationslocationdetailRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TopLocationsLocationDetailVM : ViewModel(), KoinComponent {
  val topLocationsLocationDetailModel: MutableLiveData<TopLocationsLocationDetailModel> =
      MutableLiveData(TopLocationsLocationDetailModel())

  var navArguments: Bundle? = null

  val topLocationsLocationDetailList:
      MutableLiveData<MutableList<ToplocationslocationdetailRowModel>> =
      MutableLiveData(mutableListOf())
}
