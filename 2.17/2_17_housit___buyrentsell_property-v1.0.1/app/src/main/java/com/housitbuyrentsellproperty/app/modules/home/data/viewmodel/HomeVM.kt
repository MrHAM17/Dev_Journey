package com.housitbuyrentsellproperty.app.modules.home.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.HomeModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.HomeRowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout10RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout11RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.Layout9RowModel
import com.housitbuyrentsellproperty.app.modules.home.`data`.model.PromotionbannerRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class HomeVM : ViewModel(), KoinComponent {
  val homeModel: MutableLiveData<HomeModel> = MutableLiveData(HomeModel())

  var navArguments: Bundle? = null

  val promotionBannerList: MutableLiveData<MutableList<PromotionbannerRowModel>> =
      MutableLiveData(mutableListOf())

  val layoutList: MutableLiveData<MutableList<Layout9RowModel>> = MutableLiveData(mutableListOf())

  val layout1List: MutableLiveData<MutableList<Layout10RowModel>> = MutableLiveData(mutableListOf())

  val layout2List: MutableLiveData<MutableList<Layout11RowModel>> = MutableLiveData(mutableListOf())

  val homeList: MutableLiveData<MutableList<HomeRowModel>> = MutableLiveData(mutableListOf())
}
