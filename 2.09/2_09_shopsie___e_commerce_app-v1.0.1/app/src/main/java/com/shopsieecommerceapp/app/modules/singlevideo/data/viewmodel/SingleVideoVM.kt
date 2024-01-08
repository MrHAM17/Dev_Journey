package com.shopsieecommerceapp.app.modules.singlevideo.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.singlevideo.`data`.model.SingleVideoModel
import org.koin.core.KoinComponent

class SingleVideoVM : ViewModel(), KoinComponent {
  val singleVideoModel: MutableLiveData<SingleVideoModel> = MutableLiveData(SingleVideoModel())

  var navArguments: Bundle? = null
}
