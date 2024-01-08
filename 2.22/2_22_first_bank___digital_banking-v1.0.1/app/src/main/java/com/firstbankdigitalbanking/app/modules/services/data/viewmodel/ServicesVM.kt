package com.firstbankdigitalbanking.app.modules.services.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LifeinsurancefilledRowModel
import com.firstbankdigitalbanking.app.modules.services.`data`.model.LoanoneRowModel
import com.firstbankdigitalbanking.app.modules.services.`data`.model.ServicesModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ServicesVM : ViewModel(), KoinComponent {
  val servicesModel: MutableLiveData<ServicesModel> = MutableLiveData(ServicesModel())

  var navArguments: Bundle? = null

  val lifeInsuranceFilledList: MutableLiveData<MutableList<LifeinsurancefilledRowModel>> =
      MutableLiveData(mutableListOf())

  val loanOneList: MutableLiveData<MutableList<LoanoneRowModel>> = MutableLiveData(mutableListOf())
}
