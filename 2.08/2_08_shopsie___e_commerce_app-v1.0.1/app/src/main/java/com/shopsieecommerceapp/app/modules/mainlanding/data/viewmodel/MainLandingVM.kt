package com.shopsieecommerceapp.app.modules.mainlanding.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.FrameRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.MainLandingModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.MainlandingRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.PriceRowModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightFourModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightThreeModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.SpinnerChevronrightTwoModel
import com.shopsieecommerceapp.app.modules.mainlanding.`data`.model.ThirtytwoRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MainLandingVM : ViewModel(), KoinComponent {
  val mainLandingModel: MutableLiveData<MainLandingModel> = MutableLiveData(MainLandingModel())

  var navArguments: Bundle? = null

  val spinnerChevronrightTwoList: MutableLiveData<MutableList<SpinnerChevronrightTwoModel>> =
      MutableLiveData()

  val spinnerChevronrightThreeList: MutableLiveData<MutableList<SpinnerChevronrightThreeModel>> =
      MutableLiveData()

  val spinnerChevronrightFourList: MutableLiveData<MutableList<SpinnerChevronrightFourModel>> =
      MutableLiveData()

  val frameList: MutableLiveData<MutableList<FrameRowModel>> = MutableLiveData(mutableListOf())

  val thirtyTwoList: MutableLiveData<MutableList<ThirtytwoRowModel>> =
      MutableLiveData(mutableListOf())

  val mainLandingList: MutableLiveData<MutableList<MainlandingRowModel>> =
      MutableLiveData(mutableListOf())

  val priceList: MutableLiveData<MutableList<PriceRowModel>> = MutableLiveData(mutableListOf())
}
