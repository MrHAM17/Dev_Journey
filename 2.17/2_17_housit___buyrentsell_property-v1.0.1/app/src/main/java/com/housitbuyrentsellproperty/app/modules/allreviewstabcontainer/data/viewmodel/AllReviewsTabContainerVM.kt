package com.housitbuyrentsellproperty.app.modules.allreviewstabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.allreviewstabcontainer.`data`.model.AllReviewsTabContainerModel
import org.koin.core.KoinComponent

class AllReviewsTabContainerVM : ViewModel(), KoinComponent {
  val allReviewsTabContainerModel: MutableLiveData<AllReviewsTabContainerModel> =
      MutableLiveData(AllReviewsTabContainerModel())

  var navArguments: Bundle? = null
}
