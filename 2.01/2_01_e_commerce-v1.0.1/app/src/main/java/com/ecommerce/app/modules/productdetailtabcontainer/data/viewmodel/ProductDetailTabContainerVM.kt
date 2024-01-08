package com.ecommerce.app.modules.productdetailtabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.productdetailtabcontainer.`data`.model.ProductDetailTabContainerModel
import org.koin.core.KoinComponent

class ProductDetailTabContainerVM : ViewModel(), KoinComponent {
  val productDetailTabContainerModel: MutableLiveData<ProductDetailTabContainerModel> =
      MutableLiveData(ProductDetailTabContainerModel())

  var navArguments: Bundle? = null
}
