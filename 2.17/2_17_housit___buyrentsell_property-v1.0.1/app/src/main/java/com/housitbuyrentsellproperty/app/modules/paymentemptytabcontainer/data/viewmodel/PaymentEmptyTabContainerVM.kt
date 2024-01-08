package com.housitbuyrentsellproperty.app.modules.paymentemptytabcontainer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.paymentemptytabcontainer.`data`.model.PaymentEmptyTabContainerModel
import org.koin.core.KoinComponent

class PaymentEmptyTabContainerVM : ViewModel(), KoinComponent {
  val paymentEmptyTabContainerModel: MutableLiveData<PaymentEmptyTabContainerModel> =
      MutableLiveData(PaymentEmptyTabContainerModel())

  var navArguments: Bundle? = null
}
