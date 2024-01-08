package com.housitbuyrentsellproperty.app.modules.producttourone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.producttourone.`data`.model.ProductTourOneModel
import org.koin.core.KoinComponent

class ProductTourOneVM : ViewModel(), KoinComponent {
  val productTourOneModel: MutableLiveData<ProductTourOneModel> =
      MutableLiveData(ProductTourOneModel())

  var navArguments: Bundle? = null
}
