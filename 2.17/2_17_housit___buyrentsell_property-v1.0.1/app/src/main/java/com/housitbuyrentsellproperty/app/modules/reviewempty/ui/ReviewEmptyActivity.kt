package com.housitbuyrentsellproperty.app.modules.reviewempty.ui

import android.view.View
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityReviewEmptyBinding
import com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.model.CardlistRowModel
import com.housitbuyrentsellproperty.app.modules.reviewempty.`data`.viewmodel.ReviewEmptyVM
import com.housitbuyrentsellproperty.app.modules.reviewselectvoucher.ui.ReviewSelectVoucherBottomsheet
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ReviewEmptyActivity : BaseActivity<ActivityReviewEmptyBinding>(R.layout.activity_review_empty)
    {
  private val viewModel: ReviewEmptyVM by viewModels<ReviewEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val cardListAdapter = CardListAdapter(viewModel.cardListList.value?:mutableListOf())
    binding.recyclerCardList.adapter = cardListAdapter
    cardListAdapter.setOnItemClickListener(
    object : CardListAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : CardlistRowModel) {
        onClickRecyclerCardList(view, position, item)
      }
    }
    )
    viewModel.cardListList.observe(this) {
      cardListAdapter.updateData(it)
    }
    binding.reviewEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destFragment = ReviewSelectVoucherBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, ReviewSelectVoucherBottomsheet.TAG)
    }
  }

  fun onClickRecyclerCardList(
    view: View,
    position: Int,
    item: CardlistRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "REVIEW_EMPTY_ACTIVITY"

  }
}
