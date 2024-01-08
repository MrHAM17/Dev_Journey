package com.helthiotelehealth.app.modules.pharmacy.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.PharmacyModel
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.PopularproductRowModel
import com.helthiotelehealth.app.modules.pharmacy.`data`.model.ProductonsaleRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class PharmacyVM : ViewModel(), KoinComponent {
  val pharmacyModel: MutableLiveData<PharmacyModel> = MutableLiveData(PharmacyModel())

  var navArguments: Bundle? = null

  val popularProductList: MutableLiveData<MutableList<PopularproductRowModel>> =
      MutableLiveData(mutableListOf())

  val productOnSaleList: MutableLiveData<MutableList<ProductonsaleRowModel>> =
      MutableLiveData(mutableListOf())
}
