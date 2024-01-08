package com.ecommerce.app.modules.superflashsale.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.superflashsale.`data`.model.SuperFlashSaleModel
import com.ecommerce.app.modules.superflashsale.`data`.model.SuperflashsaleRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class SuperFlashSaleVM : ViewModel(), KoinComponent {
  val superFlashSaleModel: MutableLiveData<SuperFlashSaleModel> =
      MutableLiveData(SuperFlashSaleModel())

  var navArguments: Bundle? = null

  val superFlashSaleList: MutableLiveData<MutableList<SuperflashsaleRowModel>> =
      MutableLiveData(mutableListOf())
}
