package com.housitbuyrentsellproperty.app.modules.reviews.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseFragment
import com.housitbuyrentsellproperty.app.databinding.FragmentReviewsBinding
import com.housitbuyrentsellproperty.app.modules.reviews.`data`.model.Layout8RowModel
import com.housitbuyrentsellproperty.app.modules.reviews.`data`.viewmodel.ReviewsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ReviewsFragment : BaseFragment<FragmentReviewsBinding>(R.layout.fragment_reviews) {
  private val viewModel: ReviewsVM by viewModels<ReviewsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val layoutAdapter = LayoutAdapter(viewModel.layoutList.value?:mutableListOf())
    binding.recyclerLayout.adapter = layoutAdapter
    layoutAdapter.setOnItemClickListener(
    object : LayoutAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Layout8RowModel) {
        onClickRecyclerLayout(view, position, item)
      }
    }
    )
    viewModel.layoutList.observe(requireActivity()) {
      layoutAdapter.updateData(it)
    }
    binding.reviewsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerLayout(
    view: View,
    position: Int,
    item: Layout8RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REVIEWS_FRAGMENT"

  }
}
