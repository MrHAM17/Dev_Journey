package com.housitbuyrentsellproperty.app.modules.addreviewsuccess.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.addreviewsuccess.`data`.model.AddReviewSuccessModel
import org.koin.core.KoinComponent

class AddReviewSuccessVM : ViewModel(), KoinComponent {
  val addReviewSuccessModel: MutableLiveData<AddReviewSuccessModel> =
      MutableLiveData(AddReviewSuccessModel())

  var navArguments: Bundle? = null
}
