package com.comforthotelbookingapp.app.modules.review.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.review.`data`.model.ReviewModel
import com.comforthotelbookingapp.app.modules.review.`data`.model.ReviewRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ReviewVM : ViewModel(), KoinComponent {
  val reviewModel: MutableLiveData<ReviewModel> = MutableLiveData(ReviewModel())

  var navArguments: Bundle? = null

  val reviewList: MutableLiveData<MutableList<ReviewRowModel>> = MutableLiveData(mutableListOf())
}
