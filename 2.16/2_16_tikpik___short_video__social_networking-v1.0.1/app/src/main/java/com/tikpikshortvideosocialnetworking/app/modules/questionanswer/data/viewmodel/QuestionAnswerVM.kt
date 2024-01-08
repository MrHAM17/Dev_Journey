package com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.viewmodel

import android.os.Bundle
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model.QuestionAnswerModel
import com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model.QuestionanswerRowModel
import kotlin.collections.MutableList
import org.koin.core.KoinComponent

class QuestionAnswerVM : ViewModel(), KoinComponent {
  val questionAnswerModel: MutableLiveData<QuestionAnswerModel> =
      MutableLiveData(QuestionAnswerModel())

  var navArguments: Bundle? = null

  val questionAnswerList: MutableLiveData<MutableList<QuestionanswerRowModel>> =
      MutableLiveData(mutableListOf())
}
