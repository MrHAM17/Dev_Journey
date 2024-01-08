package com.ecommerce.app.modules.orderdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.orderdetails.`data`.model.OrderDetailsModel
import com.ecommerce.app.modules.orderdetails.`data`.model.ProductRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class OrderDetailsVM : ViewModel(), KoinComponent {
  val orderDetailsModel: MutableLiveData<OrderDetailsModel> = MutableLiveData(OrderDetailsModel())

  var navArguments: Bundle? = null

  val productList: MutableLiveData<MutableList<ProductRowModel>> = MutableLiveData(mutableListOf())
}
