package com.moviestreaming.app.modules.accountfive.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.moviestreaming.app.modules.accountfive.`data`.model.AccountFiveModel
import org.koin.core.KoinComponent

class AccountFiveVM : ViewModel(), KoinComponent {
  val accountFiveModel: MutableLiveData<AccountFiveModel> = MutableLiveData(AccountFiveModel())

  var navArguments: Bundle? = null
}
