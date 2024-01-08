package com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model

import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.di.MyApp
import kotlin.String

data class QuestionAnswerModel(
  /**
   * TODO Replace with dynamic value
   */
  var txtQuestionAnswer: String? =
      MyApp.getInstance().resources.getString(R.string.msg_question_answer)
  ,
  /**
   * TODO Replace with dynamic value
   */
  var txtQuestions: String? = MyApp.getInstance().resources.getString(R.string.msg_3_378_questions)

)
