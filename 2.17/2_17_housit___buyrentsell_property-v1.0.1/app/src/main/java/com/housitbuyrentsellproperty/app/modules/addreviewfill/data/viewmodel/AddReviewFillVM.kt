package com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.model.AddReviewFillModel
import com.housitbuyrentsellproperty.app.modules.addreviewfill.`data`.model.AddreviewfillRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class AddReviewFillVM : ViewModel(), KoinComponent {
  val addReviewFillModel: MutableLiveData<AddReviewFillModel> =
      MutableLiveData(AddReviewFillModel())

  var navArguments: Bundle? = null

  val addReviewFillList: MutableLiveData<MutableList<AddreviewfillRowModel>> =
      MutableLiveData(mutableListOf())
}
