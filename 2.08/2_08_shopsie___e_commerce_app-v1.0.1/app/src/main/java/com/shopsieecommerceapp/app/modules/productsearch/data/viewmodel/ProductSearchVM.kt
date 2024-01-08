package com.shopsieecommerceapp.app.modules.productsearch.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.productsearch.`data`.model.ProductSearchModel
import com.shopsieecommerceapp.app.modules.productsearch.`data`.model.ProductsearchRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProductSearchVM : ViewModel(), KoinComponent {
  val productSearchModel: MutableLiveData<ProductSearchModel> =
      MutableLiveData(ProductSearchModel())

  var navArguments: Bundle? = null

  val productSearchList: MutableLiveData<MutableList<ProductsearchRowModel>> =
      MutableLiveData(mutableListOf())
}
