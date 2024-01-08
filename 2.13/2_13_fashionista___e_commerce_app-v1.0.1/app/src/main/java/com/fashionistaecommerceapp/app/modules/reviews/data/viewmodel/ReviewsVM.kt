package com.fashionistaecommerceapp.app.modules.reviews.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.reviews.`data`.model.ReviewsModel
import org.koin.core.KoinComponent

class ReviewsVM : ViewModel(), KoinComponent {
  val reviewsModel: MutableLiveData<ReviewsModel> = MutableLiveData(ReviewsModel())

  var navArguments: Bundle? = null
}
