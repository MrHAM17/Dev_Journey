package com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.model.Layout1RowModel
import com.housitbuyrentsellproperty.app.modules.reviewfill.`data`.model.ReviewFillModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ReviewFillVM : ViewModel(), KoinComponent {
  val reviewFillModel: MutableLiveData<ReviewFillModel> = MutableLiveData(ReviewFillModel())

  var navArguments: Bundle? = null

  val layoutList: MutableLiveData<MutableList<Layout1RowModel>> = MutableLiveData(mutableListOf())
}
