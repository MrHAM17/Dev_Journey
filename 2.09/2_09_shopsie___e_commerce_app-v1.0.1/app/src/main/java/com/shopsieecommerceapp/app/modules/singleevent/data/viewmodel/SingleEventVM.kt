package com.shopsieecommerceapp.app.modules.singleevent.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.singleevent.`data`.model.SingleEventModel
import org.koin.core.KoinComponent

class SingleEventVM : ViewModel(), KoinComponent {
  val singleEventModel: MutableLiveData<SingleEventModel> = MutableLiveData(SingleEventModel())

  var navArguments: Bundle? = null
}
