package com.fashionistaecommerceapp.app.modules.writeareview.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.writeareview.`data`.model.WriteAReviewModel
import org.koin.core.KoinComponent

class WriteAReviewVM : ViewModel(), KoinComponent {
  val writeAReviewModel: MutableLiveData<WriteAReviewModel> = MutableLiveData(WriteAReviewModel())

  var navArguments: Bundle? = null
}
