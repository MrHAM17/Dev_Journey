package com.ecommerce.app.modules.dashboard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.dashboard.`data`.model.ArrightRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.DashboardModel
import com.ecommerce.app.modules.dashboard.`data`.model.FlashsaleRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.MegasaleRowModel
import com.ecommerce.app.modules.dashboard.`data`.model.ProductsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class DashboardVM : ViewModel(), KoinComponent {
  val dashboardModel: MutableLiveData<DashboardModel> = MutableLiveData(DashboardModel())

  var navArguments: Bundle? = null

  val arrowRightList: MutableLiveData<MutableList<ArrightRowModel>> =
      MutableLiveData(mutableListOf())

  val flashSaleList: MutableLiveData<MutableList<FlashsaleRowModel>> =
      MutableLiveData(mutableListOf())

  val megaSaleList: MutableLiveData<MutableList<MegasaleRowModel>> =
      MutableLiveData(mutableListOf())

  val productsList: MutableLiveData<MutableList<ProductsRowModel>> =
      MutableLiveData(mutableListOf())
}
