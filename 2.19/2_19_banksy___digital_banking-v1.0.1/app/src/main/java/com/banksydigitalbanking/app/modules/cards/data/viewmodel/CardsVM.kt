package com.banksydigitalbanking.app.modules.cards.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.cards.`data`.model.CardsModel
import com.banksydigitalbanking.app.modules.cards.`data`.model.CardsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CardsVM : ViewModel(), KoinComponent {
  val cardsModel: MutableLiveData<CardsModel> = MutableLiveData(CardsModel())

  var navArguments: Bundle? = null

  val cardsList: MutableLiveData<MutableList<CardsRowModel>> = MutableLiveData(mutableListOf())
}
