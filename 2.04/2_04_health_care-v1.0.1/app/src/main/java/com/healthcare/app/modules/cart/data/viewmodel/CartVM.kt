package com.healthcare.app.modules.cart.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.healthcare.app.modules.cart.`data`.model.CartModel
import com.healthcare.app.modules.cart.`data`.model.Drugs2RowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class CartVM : ViewModel(), KoinComponent {
  val cartModel: MutableLiveData<CartModel> = MutableLiveData(CartModel())

  var navArguments: Bundle? = null

  val drugsList: MutableLiveData<MutableList<Drugs2RowModel>> = MutableLiveData(mutableListOf())
}
