package com.housitbuyrentsellproperty.app.modules.addreviewempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.addreviewempty.`data`.model.AddReviewEmptyModel
import org.koin.core.KoinComponent

class AddReviewEmptyVM : ViewModel(), KoinComponent {
  val addReviewEmptyModel: MutableLiveData<AddReviewEmptyModel> =
      MutableLiveData(AddReviewEmptyModel())

  var navArguments: Bundle? = null
}
