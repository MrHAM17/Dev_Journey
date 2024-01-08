package com.banksydigitalbanking.app.modules.history.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.history.`data`.model.HistoryModel
import com.banksydigitalbanking.app.modules.history.`data`.model.HistoryRowModel
import com.banksydigitalbanking.app.modules.history.`data`.model.SpinnerFavoriteModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HistoryVM : ViewModel(), KoinComponent {
  val historyModel: MutableLiveData<HistoryModel> = MutableLiveData(HistoryModel())

  var navArguments: Bundle? = null

  val spinnerFavoriteList: MutableLiveData<MutableList<SpinnerFavoriteModel>> = MutableLiveData()

  val historyList: MutableLiveData<MutableList<HistoryRowModel>> = MutableLiveData(mutableListOf())
}
