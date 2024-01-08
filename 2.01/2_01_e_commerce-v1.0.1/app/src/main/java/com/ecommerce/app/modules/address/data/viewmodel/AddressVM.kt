package com.ecommerce.app.modules.address.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.address.`data`.model.AddressModel
import com.ecommerce.app.modules.address.`data`.model.AddressesRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddressVM : ViewModel(), KoinComponent {
  val addressModel: MutableLiveData<AddressModel> = MutableLiveData(AddressModel())

  var navArguments: Bundle? = null

  val addressesList: MutableLiveData<MutableList<AddressesRowModel>> =
      MutableLiveData(mutableListOf())
}
