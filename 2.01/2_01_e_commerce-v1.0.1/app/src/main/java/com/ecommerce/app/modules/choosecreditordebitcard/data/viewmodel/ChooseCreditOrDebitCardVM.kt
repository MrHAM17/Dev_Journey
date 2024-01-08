package com.ecommerce.app.modules.choosecreditordebitcard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.choosecreditordebitcard.`data`.model.ChooseCreditOrDebitCardModel
import org.koin.core.KoinComponent

class ChooseCreditOrDebitCardVM : ViewModel(), KoinComponent {
  val chooseCreditOrDebitCardModel: MutableLiveData<ChooseCreditOrDebitCardModel> =
      MutableLiveData(ChooseCreditOrDebitCardModel())

  var navArguments: Bundle? = null
}
