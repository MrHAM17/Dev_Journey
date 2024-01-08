package com.housitbuyrentsellproperty.app.modules.paymentempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.paymentempty.`data`.model.PaymentEmptyModel
import org.koin.core.KoinComponent

class PaymentEmptyVM : ViewModel(), KoinComponent {
  val paymentEmptyModel: MutableLiveData<PaymentEmptyModel> = MutableLiveData(PaymentEmptyModel())

  var navArguments: Bundle? = null
}
