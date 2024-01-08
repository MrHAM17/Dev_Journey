package com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.model.CardlistRowModel
import com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.model.ReviewEmptyModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class ReviewEmptyVM : ViewModel(), KoinComponent {
  val reviewEmptyModel: MutableLiveData<ReviewEmptyModel> = MutableLiveData(ReviewEmptyModel())

  var navArguments: Bundle? = null

  val cardListList: MutableLiveData<MutableList<CardlistRowModel>> =
      MutableLiveData(mutableListOf())
}
