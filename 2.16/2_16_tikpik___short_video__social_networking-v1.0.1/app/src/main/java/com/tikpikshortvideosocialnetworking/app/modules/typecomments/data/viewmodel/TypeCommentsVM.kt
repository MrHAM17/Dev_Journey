package com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.model.TypeCommentsModel
import com.tikpikshortvideosocialnetworking.app.modules.typecomments.`data`.model.TypecommentsRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class TypeCommentsVM : ViewModel(), KoinComponent {
  val typeCommentsModel: MutableLiveData<TypeCommentsModel> = MutableLiveData(TypeCommentsModel())

  var navArguments: Bundle? = null

  val typeCommentsList: MutableLiveData<MutableList<TypecommentsRowModel>> =
      MutableLiveData(mutableListOf())
}
