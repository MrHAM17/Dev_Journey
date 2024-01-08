package com.comforthotelbookingapp.app.modules.review.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseFragment
import com.comforthotelbookingapp.app.databinding.FragmentReviewBinding
import com.comforthotelbookingapp.app.modules.review.`data`.model.ReviewRowModel
import com.comforthotelbookingapp.app.modules.review.`data`.viewmodel.ReviewVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ReviewFragment : BaseFragment<FragmentReviewBinding>(R.layout.fragment_review) {
  private val viewModel: ReviewVM by viewModels<ReviewVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val reviewAdapter = ReviewAdapter(viewModel.reviewList.value?:mutableListOf())
    binding.recyclerReview.adapter = reviewAdapter
    reviewAdapter.setOnItemClickListener(
    object : ReviewAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ReviewRowModel) {
        onClickRecyclerReview(view, position, item)
      }
    }
    )
    viewModel.reviewList.observe(requireActivity()) {
      reviewAdapter.updateData(it)
    }
    binding.reviewVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerReview(
    view: View,
    position: Int,
    item: ReviewRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REVIEW_FRAGMENT"

  }
}
