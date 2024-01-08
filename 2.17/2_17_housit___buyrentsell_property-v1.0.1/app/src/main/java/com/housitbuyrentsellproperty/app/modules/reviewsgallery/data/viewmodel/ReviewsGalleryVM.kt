package com.housitbuyrentsellproperty.app.modules.reviewsgallery.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviewsgallery.`data`.model.ReviewsGalleryModel
import org.koin.core.KoinComponent

class ReviewsGalleryVM : ViewModel(), KoinComponent {
  val reviewsGalleryModel: MutableLiveData<ReviewsGalleryModel> =
      MutableLiveData(ReviewsGalleryModel())

  var navArguments: Bundle? = null
}
