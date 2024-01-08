package com.vertexrealestateapp.app.modules.productdetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.CardsRowModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ImagesRowModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.ProductDetailsModel
import com.vertexrealestateapp.app.modules.productdetails.`data`.model.PropertydetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProductDetailsVM : ViewModel(), KoinComponent {
  val productDetailsModel: MutableLiveData<ProductDetailsModel> =
      MutableLiveData(ProductDetailsModel())

  var navArguments: Bundle? = null

  val propertyDetailsList: MutableLiveData<MutableList<PropertydetailsRowModel>> =
      MutableLiveData(mutableListOf())

  val imagesList: MutableLiveData<MutableList<ImagesRowModel>> = MutableLiveData(mutableListOf())

  val cardsList: MutableLiveData<MutableList<CardsRowModel>> = MutableLiveData(mutableListOf())
}
