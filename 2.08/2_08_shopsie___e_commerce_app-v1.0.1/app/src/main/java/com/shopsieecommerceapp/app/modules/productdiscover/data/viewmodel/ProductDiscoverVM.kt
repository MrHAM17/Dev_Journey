package com.shopsieecommerceapp.app.modules.productdiscover.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.productdiscover.`data`.model.ListRowModel
import com.shopsieecommerceapp.app.modules.productdiscover.`data`.model.ProductDiscoverModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProductDiscoverVM : ViewModel(), KoinComponent {
  val productDiscoverModel: MutableLiveData<ProductDiscoverModel> =
      MutableLiveData(ProductDiscoverModel())

  var navArguments: Bundle? = null

  val listList: MutableLiveData<MutableList<ListRowModel>> = MutableLiveData(mutableListOf())
}
