package com.housitbuyrentsellproperty.app.modules.reviews.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviews.`data`.model.Layout8RowModel
import com.housitbuyrentsellproperty.app.modules.reviews.`data`.model.ReviewsModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ReviewsVM : ViewModel(), KoinComponent {
  val reviewsModel: MutableLiveData<ReviewsModel> = MutableLiveData(ReviewsModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout8RowModel>> = MutableLiveData(mutableListOf())
}
