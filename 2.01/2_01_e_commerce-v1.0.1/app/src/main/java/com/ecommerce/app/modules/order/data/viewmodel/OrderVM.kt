package com.ecommerce.app.modules.order.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.order.`data`.model.OrderModel
import com.ecommerce.app.modules.order.`data`.model.OrdersRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class OrderVM : ViewModel(), KoinComponent {
  val orderModel: MutableLiveData<OrderModel> = MutableLiveData(OrderModel())

  var navArguments: Bundle? = null

  val ordersList: MutableLiveData<MutableList<OrdersRowModel>> = MutableLiveData(mutableListOf())
}
