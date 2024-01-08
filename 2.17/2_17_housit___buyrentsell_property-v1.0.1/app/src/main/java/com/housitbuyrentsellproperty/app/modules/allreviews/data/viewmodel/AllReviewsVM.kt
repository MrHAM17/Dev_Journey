package com.housitbuyrentsellproperty.app.modules.allreviews.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model.AllReviewsModel
import com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model.AllreviewsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AllReviewsVM : ViewModel(), KoinComponent {
  val allReviewsModel: MutableLiveData<AllReviewsModel> = MutableLiveData(AllReviewsModel())

  var navArguments: Bundle? = null

  val allReviewsList: MutableLiveData<MutableList<AllreviewsRowModel>> =
      MutableLiveData(mutableListOf())
}
