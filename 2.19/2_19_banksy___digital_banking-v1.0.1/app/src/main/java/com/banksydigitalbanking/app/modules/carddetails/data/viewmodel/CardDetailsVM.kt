package com.banksydigitalbanking.app.modules.carddetails.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.carddetails.`data`.model.CardDetailsModel
import com.banksydigitalbanking.app.modules.carddetails.`data`.model.CarddetailsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CardDetailsVM : ViewModel(), KoinComponent {
  val cardDetailsModel: MutableLiveData<CardDetailsModel> = MutableLiveData(CardDetailsModel())

  var navArguments: Bundle? = null

  val cardDetailsList: MutableLiveData<MutableList<CarddetailsRowModel>> =
      MutableLiveData(mutableListOf())
}
