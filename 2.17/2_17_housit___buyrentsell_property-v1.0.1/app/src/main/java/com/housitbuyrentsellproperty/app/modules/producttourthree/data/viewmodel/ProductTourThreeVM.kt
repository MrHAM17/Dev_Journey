package com.housitbuyrentsellproperty.app.modules.producttourthree.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.producttourthree.`data`.model.ProductTourThreeModel
import org.koin.core.KoinComponent

class ProductTourThreeVM : ViewModel(), KoinComponent {
  val productTourThreeModel: MutableLiveData<ProductTourThreeModel> =
      MutableLiveData(ProductTourThreeModel())

  var navArguments: Bundle? = null
}
