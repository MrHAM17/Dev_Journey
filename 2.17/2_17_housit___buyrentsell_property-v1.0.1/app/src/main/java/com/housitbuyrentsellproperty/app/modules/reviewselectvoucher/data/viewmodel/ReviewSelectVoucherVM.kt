package com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.`data`.model.ReviewSelectVoucherModel
import org.koin.core.KoinComponent

class ReviewSelectVoucherVM : ViewModel(), KoinComponent {
  val reviewSelectVoucherModel: MutableLiveData<ReviewSelectVoucherModel> =
      MutableLiveData(ReviewSelectVoucherModel())

  var navArguments: Bundle? = null
}
