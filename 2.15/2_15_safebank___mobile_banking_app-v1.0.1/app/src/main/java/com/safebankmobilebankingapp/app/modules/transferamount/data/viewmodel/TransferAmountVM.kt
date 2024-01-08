package com.safebankmobilebankingapp.app.modules.transferamount.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.transferamount.`data`.model.TransferAmountModel
import org.koin.core.KoinComponent

class TransferAmountVM : ViewModel(), KoinComponent {
  val transferAmountModel: MutableLiveData<TransferAmountModel> =
      MutableLiveData(TransferAmountModel())

  var navArguments: Bundle? = null
}
