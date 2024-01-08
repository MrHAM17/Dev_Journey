package com.housitbuyrentsellproperty.app.modules.promotion.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.promotion.`data`.model.PromotionModel
import org.koin.core.KoinComponent

class PromotionVM : ViewModel(), KoinComponent {
  val promotionModel: MutableLiveData<PromotionModel> = MutableLiveData(PromotionModel())

  var navArguments: Bundle? = null
}
