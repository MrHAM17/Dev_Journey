package com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.ui

import android.view.View
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityTrendingSoundsDetailsBinding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.model.Autolayoutvertical4RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsoundsdetails.`data`.viewmodel.TrendingSoundsDetailsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingSoundsDetailsActivity :
    BaseActivity<ActivityTrendingSoundsDetailsBinding>(R.layout.activity_trending_sounds_details) {
  private val viewModel: TrendingSoundsDetailsVM by viewModels<TrendingSoundsDetailsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val autoLayoutVerticalAdapter =
    AutoLayoutVerticalAdapter(viewModel.autoLayoutVerticalList.value?:mutableListOf())
    binding.recyclerAutoLayoutVertical.adapter = autoLayoutVerticalAdapter
    autoLayoutVerticalAdapter.setOnItemClickListener(
    object : AutoLayoutVerticalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Autolayoutvertical4RowModel) {
        onClickRecyclerAutoLayoutVertical(view, position, item)
      }
    }
    )
    viewModel.autoLayoutVerticalList.observe(this) {
      autoLayoutVerticalAdapter.updateData(it)
    }
    binding.trendingSoundsDetailsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerAutoLayoutVertical(
    view: View,
    position: Int,
    item: Autolayoutvertical4RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRENDING_SOUNDS_DETAILS_ACTIVITY"

  }
}
