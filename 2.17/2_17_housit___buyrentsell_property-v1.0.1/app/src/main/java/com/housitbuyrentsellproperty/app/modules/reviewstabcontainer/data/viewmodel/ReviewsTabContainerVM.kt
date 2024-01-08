package com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviewstabcontainer.`data`.model.ReviewsTabContainerModel
import org.koin.core.KoinComponent

class ReviewsTabContainerVM : ViewModel(), KoinComponent {
  val reviewsTabContainerModel: MutableLiveData<ReviewsTabContainerModel> =
      MutableLiveData(ReviewsTabContainerModel())

  var navArguments: Bundle? = null
}
