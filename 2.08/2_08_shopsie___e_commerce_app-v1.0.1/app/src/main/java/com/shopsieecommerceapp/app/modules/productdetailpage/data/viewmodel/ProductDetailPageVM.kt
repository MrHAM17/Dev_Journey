package com.shopsieecommerceapp.app.modules.productdetailpage.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.productdetailpage.`data`.model.ProductDetailPageModel
import org.koin.core.KoinComponent

class ProductDetailPageVM : ViewModel(), KoinComponent {
  val productDetailPageModel: MutableLiveData<ProductDetailPageModel> =
      MutableLiveData(ProductDetailPageModel())

  var navArguments: Bundle? = null
}
