package com.fashionistaecommerceapp.app.modules.trackingorder.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.fashionistaecommerceapp.app.modules.trackingorder.`data`.model.TrackingOrderModel
import org.koin.core.KoinComponent

class TrackingOrderVM : ViewModel(), KoinComponent {
  val trackingOrderModel: MutableLiveData<TrackingOrderModel> =
      MutableLiveData(TrackingOrderModel())

  var navArguments: Bundle? = null
}
