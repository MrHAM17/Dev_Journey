package com.streetstyleecommerceapp.app.modules.product.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.streetstyleecommerceapp.app.modules.product.`data`.model.ProductModel
import org.koin.core.KoinComponent

class ProductVM : ViewModel(), KoinComponent {
  val productModel: MutableLiveData<ProductModel> = MutableLiveData(ProductModel())

  var navArguments: Bundle? = null
}
