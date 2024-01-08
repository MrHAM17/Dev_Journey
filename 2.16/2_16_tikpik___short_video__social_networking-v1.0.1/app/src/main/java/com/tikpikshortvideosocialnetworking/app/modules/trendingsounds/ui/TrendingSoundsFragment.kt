package com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.ui

import android.view.View
import androidx.fragment.app.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseFragment
import com.tikpikshortvideosocialnetworking.app.databinding.FragmentTrendingSoundsBinding
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal1RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.model.Autolayouthorizontal2RowModel
import com.tikpikshortvideosocialnetworking.app.modules.trendingsounds.`data`.viewmodel.TrendingSoundsVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingSoundsFragment :
    BaseFragment<FragmentTrendingSoundsBinding>(R.layout.fragment_trending_sounds) {
  private val viewModel: TrendingSoundsVM by viewModels<TrendingSoundsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val autoLayoutHorizontalAdapter =
    AutoLayoutHorizontalAdapter(viewModel.autoLayoutHorizontalList.value?:mutableListOf())
    binding.recyclerAutoLayoutHorizontal.adapter = autoLayoutHorizontalAdapter
    autoLayoutHorizontalAdapter.setOnItemClickListener(
    object : AutoLayoutHorizontalAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item :
      Autolayouthorizontal1RowModel) {
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
      Autolayouthorizontal2RowModel) {
        onClickRecyclerAutoLayoutHorizontal1(view, position, item)
      }
    }
    )
    viewModel.autoLayoutHorizontal1List.observe(requireActivity()) {
      autoLayoutHorizontal1Adapter.updateData(it)
    }
    binding.trendingSoundsVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerAutoLayoutHorizontal(
    view: View,
    position: Int,
    item: Autolayouthorizontal1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerAutoLayoutHorizontal1(
    view: View,
    position: Int,
    item: Autolayouthorizontal2RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRENDING_SOUNDS_FRAGMENT"

  }
}
