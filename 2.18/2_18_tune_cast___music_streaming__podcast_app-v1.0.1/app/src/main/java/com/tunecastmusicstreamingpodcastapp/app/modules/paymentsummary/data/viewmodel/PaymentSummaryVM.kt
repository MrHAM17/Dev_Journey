package com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentsummary.`data`.model.PaymentSummaryModel
import org.koin.core.KoinComponent

class PaymentSummaryVM : ViewModel(), KoinComponent {
  val paymentSummaryModel: MutableLiveData<PaymentSummaryModel> =
      MutableLiveData(PaymentSummaryModel())

  var navArguments: Bundle? = null
}
