package com.housitbuyrentsellproperty.app.modules.paymentpaypal.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.paymentpaypal.`data`.model.PaymentPaypalModel
import org.koin.core.KoinComponent

class PaymentPaypalVM : ViewModel(), KoinComponent {
  val paymentPaypalModel: MutableLiveData<PaymentPaypalModel> =
      MutableLiveData(PaymentPaypalModel())

  var navArguments: Bundle? = null
}
