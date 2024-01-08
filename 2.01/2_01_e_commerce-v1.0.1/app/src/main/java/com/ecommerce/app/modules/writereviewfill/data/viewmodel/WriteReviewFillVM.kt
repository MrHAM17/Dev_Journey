package com.ecommerce.app.modules.writereviewfill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.writereviewfill.`data`.model.WriteReviewFillModel
import org.koin.core.KoinComponent

class WriteReviewFillVM : ViewModel(), KoinComponent {
  val writeReviewFillModel: MutableLiveData<WriteReviewFillModel> =
      MutableLiveData(WriteReviewFillModel())

  var navArguments: Bundle? = null
}
