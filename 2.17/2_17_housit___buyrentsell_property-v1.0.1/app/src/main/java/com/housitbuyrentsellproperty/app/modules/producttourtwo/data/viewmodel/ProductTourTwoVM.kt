package com.housitbuyrentsellproperty.app.modules.producttourtwo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.producttourtwo.`data`.model.ProductTourTwoModel
import org.koin.core.KoinComponent

class ProductTourTwoVM : ViewModel(), KoinComponent {
  val productTourTwoModel: MutableLiveData<ProductTourTwoModel> =
      MutableLiveData(ProductTourTwoModel())

  var navArguments: Bundle? = null
}
