package com.tikpikshortvideosocialnetworking.app.modules.questionanswer.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.tikpikshortvideosocialnetworking.app.databinding.BottomsheetQuestionAnswerBinding
import com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.model.QuestionanswerRowModel
import com.tikpikshortvideosocialnetworking.app.modules.questionanswer.`data`.viewmodel.QuestionAnswerVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class QuestionAnswerBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetQuestionAnswerBinding>(R.layout.bottomsheet_question_answer)
    {
  private val viewModel: QuestionAnswerVM by viewModels<QuestionAnswerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val questionAnswerAdapter =
    QuestionAnswerAdapter(viewModel.questionAnswerList.value?:mutableListOf())
    binding.recyclerQuestionAnswer.adapter = questionAnswerAdapter
    questionAnswerAdapter.setOnItemClickListener(
    object : QuestionAnswerAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : QuestionanswerRowModel) {
        onClickRecyclerQuestionAnswer(view, position, item)
      }
    }
    )
    viewModel.questionAnswerList.observe(requireActivity()) {
      questionAnswerAdapter.updateData(it)
    }
    binding.questionAnswerVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerQuestionAnswer(
    view: View,
    position: Int,
    item: QuestionanswerRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "QUESTION_ANSWER_BOTTOMSHEET"

  }
}
