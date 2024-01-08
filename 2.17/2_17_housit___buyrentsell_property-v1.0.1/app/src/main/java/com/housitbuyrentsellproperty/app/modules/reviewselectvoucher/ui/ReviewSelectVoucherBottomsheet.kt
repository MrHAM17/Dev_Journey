package com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.ui

import android.os.Bundle
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseBottomsheetDialogFragment
import com.housitbuyrentsellproperty.app.databinding.BottomsheetReviewSelectVoucherBinding
import com.housitbuyrentsellproperty.app.modules.reviewfill.ui.ReviewFillActivity
import com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.`data`.viewmodel.ReviewSelectVoucherVM
import kotlin.String
import kotlin.Unit

class ReviewSelectVoucherBottomsheet :
    BaseBottomsheetDialogFragment<BottomsheetReviewSelectVoucherBinding>(R.layout.bottomsheet_review_select_voucher)
    {
  private val viewModel: ReviewSelectVoucherVM by viewModels<ReviewSelectVoucherVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.reviewSelectVoucherVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnApplyVoucher.setOnClickListener {
      val destIntent = ReviewFillActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      dismiss()
    }
  }

  companion object {
    const val TAG: String = "REVIEW_SELECT_VOUCHER_BOTTOMSHEET"


    fun getInstance(bundle: Bundle?): ReviewSelectVoucherBottomsheet {
      val fragment = ReviewSelectVoucherBottomsheet()
      fragment.arguments = bundle
      return fragment
    }
  }
}
