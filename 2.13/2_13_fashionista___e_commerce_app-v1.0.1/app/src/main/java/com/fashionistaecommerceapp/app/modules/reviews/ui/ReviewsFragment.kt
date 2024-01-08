package com.fashionistaecommerceapp.app.modules.reviews.ui

import androidx.fragment.app.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseFragment
import com.fashionistaecommerceapp.app.databinding.FragmentReviewsBinding
import com.fashionistaecommerceapp.app.modules.reviews.`data`.viewmodel.ReviewsVM
import com.fashionistaecommerceapp.app.modules.settings.ui.SettingsActivity
import kotlin.String
import kotlin.Unit

class ReviewsFragment : BaseFragment<FragmentReviewsBinding>(R.layout.fragment_reviews) {
  private val viewModel: ReviewsVM by viewModels<ReviewsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    binding.reviewsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnWriteAReview.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  companion object {
    const val TAG: String = "REVIEWS_FRAGMENT"

  }
}
