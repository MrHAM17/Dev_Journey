package com.comforthotelbookingapp.app.modules.cardadded.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.comforthotelbookingapp.app.modules.cardadded.`data`.model.CardAddedModel
import com.comforthotelbookingapp.app.modules.cardadded.`data`.model.CardaddedRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CardAddedVM : ViewModel(), KoinComponent {
  val cardAddedModel: MutableLiveData<CardAddedModel> = MutableLiveData(CardAddedModel())

  var navArguments: Bundle? = null

  val cardAddedList: MutableLiveData<MutableList<CardaddedRowModel>> =
      MutableLiveData(mutableListOf())
}
