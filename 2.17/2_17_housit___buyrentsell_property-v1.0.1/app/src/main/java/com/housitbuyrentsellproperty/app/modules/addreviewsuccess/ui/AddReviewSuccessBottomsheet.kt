package com.housitbuyrentsellproperty.app.modules.addreviewsuccess.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetAddReviewSuccessBinding
import com.housitbuyrentsellproperty.app.modules.addreviewsuccess.`data`.viewmodel.AddReviewSuccessVM
import kotlin.String
import kotlin.Unit

class AddReviewSuccessBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetAddReviewSuccessBinding>(R.layout.bottomsheet_add_review_success)
    {
  private val viewModel: AddReviewSuccessVM by viewModels<AddReviewSuccessVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.addReviewSuccessVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "ADD_REVIEW_SUCCESS_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): AddReviewSuccessBottomsheet {
      val fragment = AddReviewSuccessBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
