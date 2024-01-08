package com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.FortytwoRowModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.MobilePrepaidOneModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.Profilelist1RowModel
import com.banksydigitalbanking.app.modules.mobileprepaidone.`data`.model.ThirtysevenRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MobilePrepaidOneVM : ViewModel(), KoinComponent {
  val mobilePrepaidOneModel: MutableLiveData<MobilePrepaidOneModel> =
      MutableLiveData(MobilePrepaidOneModel())

  var navArguments: Bundle? = null

  val profileListList: MutableLiveData<MutableList<Profilelist1RowModel>> =
      MutableLiveData(mutableListOf())

  val fortyTwoList: MutableLiveData<MutableList<FortytwoRowModel>> =
      MutableLiveData(mutableListOf())

  val thirtySevenList: MutableLiveData<MutableList<ThirtysevenRowModel>> =
      MutableLiveData(mutableListOf())
}
