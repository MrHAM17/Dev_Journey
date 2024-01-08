package com.housitbuyrentsellproperty.app.modules.paymentmastercard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.paymentmastercard.`data`.model.PaymentMastercardModel
import org.koin.core.KoinComponent

class PaymentMastercardVM : ViewModel(), KoinComponent {
  val paymentMastercardModel: MutableLiveData<PaymentMastercardModel> =
      MutableLiveData(PaymentMastercardModel())

  var navArguments: Bundle? = null
}
