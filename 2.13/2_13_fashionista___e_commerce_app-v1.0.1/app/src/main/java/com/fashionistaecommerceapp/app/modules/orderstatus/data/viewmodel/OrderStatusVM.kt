package com.fashionistaecommerceapp.app.modules.orderstatus.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.OrderStatusModel
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.OrderstatusRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class OrderStatusVM : ViewModel(), KoinComponent {
  val orderStatusModel: MutableLiveData<OrderStatusModel> = MutableLiveData(OrderStatusModel())

  var navArguments: Bundle? = null

  val orderStatusList: MutableLiveData<MutableList<OrderstatusRowModel>> =
      MutableLiveData(mutableListOf())
}
