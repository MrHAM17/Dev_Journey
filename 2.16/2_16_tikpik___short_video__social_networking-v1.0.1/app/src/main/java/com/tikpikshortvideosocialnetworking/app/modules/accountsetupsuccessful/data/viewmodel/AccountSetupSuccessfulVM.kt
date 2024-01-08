package com.tikpikshortvideosocialnetworking.app.modules.accountsetupsuccessful.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.accountsetupsuccessful.`data`.model.AccountSetupSuccessfulModel
import org.koin.core.KoinComponent

class AccountSetupSuccessfulVM : ViewModel(), KoinComponent {
  val accountSetupSuccessfulModel: MutableLiveData<AccountSetupSuccessfulModel> =
      MutableLiveData(AccountSetupSuccessfulModel())

  var navArguments: Bundle? = null
}
