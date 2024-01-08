package com.ecommerce.app.modules.reviewproduct.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.reviewproduct.`data`.model.ReviewProductModel
import com.ecommerce.app.modules.reviewproduct.`data`.model.ReviewproductRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ReviewProductVM : ViewModel(), KoinComponent {
  val reviewProductModel: MutableLiveData<ReviewProductModel> =
      MutableLiveData(ReviewProductModel())

  var navArguments: Bundle? = null

  val reviewProductList: MutableLiveData<MutableList<ReviewproductRowModel>> =
      MutableLiveData(mutableListOf())
}
