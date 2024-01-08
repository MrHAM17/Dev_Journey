package com.ecommerce.app.modules.offerscreen.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.offerscreen.`data`.model.OfferScreenModel
import com.ecommerce.app.modules.offerscreen.`data`.model.OfferscreenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class OfferScreenVM : ViewModel(), KoinComponent {
  val offerScreenModel: MutableLiveData<OfferScreenModel> = MutableLiveData(OfferScreenModel())

  var navArguments: Bundle? = null

  val offerScreenList: MutableLiveData<MutableList<OfferscreenRowModel>> =
      MutableLiveData(mutableListOf())
}
