package com.ecommerce.app.modules.productdetail.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.productdetail.`data`.model.BlueRowModel
import com.ecommerce.app.modules.productdetail.`data`.model.ProductDetailModel
import com.ecommerce.app.modules.productdetail.`data`.model.Products1RowModel
import com.ecommerce.app.modules.productdetail.`data`.model.RecomendedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProductDetailVM : ViewModel(), KoinComponent {
  val productDetailModel: MutableLiveData<ProductDetailModel> =
      MutableLiveData(ProductDetailModel())

  var navArguments: Bundle? = null

  val blueList: MutableLiveData<MutableList<BlueRowModel>> = MutableLiveData(mutableListOf())

  val productsList: MutableLiveData<MutableList<Products1RowModel>> =
      MutableLiveData(mutableListOf())

  val recomendedList: MutableLiveData<MutableList<RecomendedRowModel>> =
      MutableLiveData(mutableListOf())
}
