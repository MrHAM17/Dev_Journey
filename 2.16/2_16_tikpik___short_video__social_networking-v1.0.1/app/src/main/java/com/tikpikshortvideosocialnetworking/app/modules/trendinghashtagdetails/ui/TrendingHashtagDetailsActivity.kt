package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.ui

import android.view.View
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityTrendingHashtagDetailsBinding
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.model.Autolayoutvertical5RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtagdetails.`data`.viewmodel.TrendingHashtagDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingHashtagDetailsActivity :
    BaseActivity<ActivityTrendingHashtagDetailsBinding>(R.layout.activity_trending_hashtag_details)
    {
  private val viewModel: TrendingHashtagDetailsVM by viewModels<TrendingHashtagDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical5RowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(this) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    binding.trendingHashtagDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: Autolayoutvertical5RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRENDING_HASHTAG_DETAILS_ACTIVITY"

  }
}
