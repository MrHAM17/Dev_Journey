package com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.`data`.model.ManageAccountsModel
import org.koin.core.KoinComponent

class ManageAccountsVM : ViewModel(), KoinComponent {
  val manageAccountsModel: MutableLiveData<ManageAccountsModel> =
      MutableLiveData(ManageAccountsModel())

  var navArguments: Bundle? = null
}
