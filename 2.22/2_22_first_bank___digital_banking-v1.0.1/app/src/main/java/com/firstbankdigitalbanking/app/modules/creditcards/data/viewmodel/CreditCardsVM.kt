package com.firstbankdigitalbanking.app.modules.creditcards.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.CreditCardsModel
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.CreditcardsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CreditCardsVM : ViewModel(), KoinComponent {
  val creditCardsModel: MutableLiveData<CreditCardsModel> = MutableLiveData(CreditCardsModel())

  var navArguments: Bundle? = null

  val creditCardsList: MutableLiveData<MutableList<CreditcardsRowModel>> =
      MutableLiveData(mutableListOf())
}
