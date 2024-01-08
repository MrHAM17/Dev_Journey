package com.housitbuyrentsellproperty.app.modules.allreviews.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentAllReviewsBinding
import com.housitbuyrentsellproperty.app.modules.allreviews.`data`.model.AllreviewsRowModel
import com.housitbuyrentsellproperty.app.modules.allreviews.`data`.viewmodel.AllReviewsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class AllReviewsFragment : BaseFragment<FragmentAllReviewsBinding>(R.layout.fragment_all_reviews) {
  private val viewModel: AllReviewsVM by viewModels<AllReviewsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val allReviewsAdapter = AllReviewsAdapter(viewModel.allReviewsList.value?:mutableListOf())
    binding.recyclerAllReviews.adapter = allReviewsAdapter
    allReviewsAdapter.setOnItemClickListener(
    object : AllReviewsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : AllreviewsRowModel) {
        onClickRecyclerAllReviews(view, position, item)
      }
    }
    )
    viewModel.allReviewsList.observe(requireActivity()) {
      allReviewsAdapter.updateData(it)
    }
    binding.allReviewsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAllReviews(
    view: View,
    position: Int,
    item: AllreviewsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ALL_REVIEWS_FRAGMENT"

  }
}
