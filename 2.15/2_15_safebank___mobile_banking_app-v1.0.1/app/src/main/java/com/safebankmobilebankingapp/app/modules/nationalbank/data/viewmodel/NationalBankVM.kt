package com.safebankmobilebankingapp.app.modules.nationalbank.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.safebankmobilebankingapp.app.modules.nationalbank.`data`.model.NationalBankModel
import org.koin.core.KoinComponent

class NationalBankVM : ViewModel(), KoinComponent {
  val nationalBankModel: MutableLiveData<NationalBankModel> = MutableLiveData(NationalBankModel())

  var navArguments: Bundle? = null
}
