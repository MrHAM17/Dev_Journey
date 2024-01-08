package com.ecommerce.app.modules.creditcardanddebit.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.ecommerce.app.modules.creditcardanddebit.`data`.model.CardsRowModel
import com.ecommerce.app.modules.creditcardanddebit.`data`.model.CreditCardAndDebitModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CreditCardAndDebitVM : ViewModel(), KoinComponent {
  val creditCardAndDebitModel: MutableLiveData<CreditCardAndDebitModel> =
      MutableLiveData(CreditCardAndDebitModel())

  var navArguments: Bundle? = null

  val cardsList: MutableLiveData<MutableList<CardsRowModel>> = MutableLiveData(mutableListOf())
}
