package com.ecommerce.app.modules.addcard.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.addcard.`data`.model.AddCardModel
import org.koin.core.KoinComponent

class AddCardVM : ViewModel(), KoinComponent {
  val addCardModel: MutableLiveData<AddCardModel> = MutableLiveData(AddCardModel())

  var navArguments: Bundle? = null
}
