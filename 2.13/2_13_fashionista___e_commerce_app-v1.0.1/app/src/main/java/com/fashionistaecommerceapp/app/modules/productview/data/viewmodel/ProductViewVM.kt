package com.fashionistaecommerceapp.app.modules.productview.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.productview.`data`.model.ProductViewModel
import org.koin.core.KoinComponent

class ProductViewVM : ViewModel(), KoinComponent {
  val productViewModel: MutableLiveData<ProductViewModel> = MutableLiveData(ProductViewModel())

  var navArguments: Bundle? = null
}
