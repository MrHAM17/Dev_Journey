package com.comforthotelbookingapp.app.modules.reviewtabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.reviewtabcontainer.`data`.model.ReviewTabContainerModel
import org.koin.core.KoinComponent

class ReviewTabContainerVM : ViewModel(), KoinComponent {
  val reviewTabContainerModel: MutableLiveData<ReviewTabContainerModel> =
      MutableLiveData(ReviewTabContainerModel())

  var navArguments: Bundle? = null
}
