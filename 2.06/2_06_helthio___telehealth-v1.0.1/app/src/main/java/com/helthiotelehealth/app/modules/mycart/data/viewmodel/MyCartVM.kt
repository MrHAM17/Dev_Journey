package com.helthiotelehealth.app.modules.mycart.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.mycart.`data`.model.DurgsRowModel
import com.helthiotelehealth.app.modules.mycart.`data`.model.MyCartModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class MyCartVM : ViewModel(), KoinComponent {
  val myCartModel: MutableLiveData<MyCartModel> = MutableLiveData(MyCartModel())

  var navArguments: Bundle? = null

  val durgsList: MutableLiveData<MutableList<DurgsRowModel>> = MutableLiveData(mutableListOf())
}
