package com.shopsieecommerceapp.app.modules.profilemyorders.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model.OrderslistRowModel
import com.shopsieecommerceapp.app.modules.profilemyorders.`data`.model.ProfileMyOrdersModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ProfileMyOrdersVM : ViewModel(), KoinComponent {
  val profileMyOrdersModel: MutableLiveData<ProfileMyOrdersModel> =
      MutableLiveData(ProfileMyOrdersModel())

  var navArguments: Bundle? = null

  val ordersListList: MutableLiveData<MutableList<OrderslistRowModel>> =
      MutableLiveData(mutableListOf())
}
