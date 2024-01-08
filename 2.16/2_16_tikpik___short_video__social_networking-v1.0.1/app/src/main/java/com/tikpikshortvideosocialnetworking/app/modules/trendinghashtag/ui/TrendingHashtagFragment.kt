package com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentTrendingHashtagBinding
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal3RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.model.Autolayouthorizontal4RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendinghashtag.`data`.viewmodel.TrendingHashtagVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingHashtagFragment :
    BaseFragment<FragmentTrendingHashtagBinding>(R.layout.fragment_trending_hashtag) {
  private val viewModel: TrendingHashtagVM by viewModels<TrendingHashtagVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val autoLayoutHorizontalAdapter =
    AutoLayoutHorizontalAdapter(viewModel.autoLayoutHorizontalList.value?:mutableListOf())
    binding.recyclerAutoLayoutHorizontal.adapter = autoLayoutHorizontalAdapter
    autoLayoutHorizontalAdapter.setOnItemClickListener(
    object : AutoLayoutHorizontalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      Autolayouthorizontal3RowModel) {
        onClickRecyclerAutoLayoutHorizontal(view, position, item)
      }
    }
    )
    viewModel.autoLayoutHorizontalList.observe(requireActivity()) {
      autoLayoutHorizontalAdapter.updateData(it)
    }
    val autoLayoutHorizontal1Adapter =
    AutoLayoutHorizontal1Adapter(viewModel.autoLayoutHorizontal1List.value?:mutableListOf())
    binding.recyclerAutoLayoutHorizontal1.adapter = autoLayoutHorizontal1Adapter
    autoLayoutHorizontal1Adapter.setOnItemClickListener(
    object : AutoLayoutHorizontal1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      Autolayouthorizontal4RowModel) {
        onClickRecyclerAutoLayoutHorizontal1(view, position, item)
      }
    }
    )
    viewModel.autoLayoutHorizontal1List.observe(requireActivity()) {
      autoLayoutHorizontal1Adapter.updateData(it)
    }
    binding.trendingHashtagVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAutoLayoutHorizontal(
    view: View,
    position: Int,
    item: Autolayouthorizontal3RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerAutoLayoutHorizontal1(
    view: View,
    position: Int,
    item: Autolayouthorizontal4RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRENDING_HASHTAG_FRAGMENT"

  }
}
