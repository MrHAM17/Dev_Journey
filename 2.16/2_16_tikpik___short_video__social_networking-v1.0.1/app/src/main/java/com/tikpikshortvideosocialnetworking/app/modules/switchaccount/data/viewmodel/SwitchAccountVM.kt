package com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model.SwitchAccountModel
import com.tikpikshortvideosocialnetworking.app.modules.switchaccount.`data`.model.SwitchaccountRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SwitchAccountVM : ViewModel(), KoinComponent {
  val switchAccountModel: MutableLiveData<SwitchAccountModel> =
      MutableLiveData(SwitchAccountModel())

  var navArguments: Bundle? = null

  val switchAccountList: MutableLiveData<MutableList<SwitchaccountRowModel>> =
      MutableLiveData(mutableListOf())
}
