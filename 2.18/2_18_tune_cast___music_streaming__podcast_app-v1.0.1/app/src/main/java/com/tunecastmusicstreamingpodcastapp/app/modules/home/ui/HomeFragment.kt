package com.tunecastmusicstreamingpodcastapp.app.modules.home.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseFragment
import com.tunecastmusicstreamingpodcastapp.app.databinding.FragmentHomeBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.Frame1RowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.FrameRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.model.TopchartsRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.home.`data`.viewmodel.HomeVM
import com.tunecastmusicstreamingpodcastapp.app.modules.popularartists.ui.PopularArtistsActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.ui.TrendingNowActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class HomeFragment : BaseFragment<FragmentHomeBinding>(R.layout.fragment_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : FrameRowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(requireActivity()) {
      frameAdapter.updateData(it)
    }
    val frame1Adapter = Frame1Adapter(viewModel.frame1List.value?:mutableListOf())
    binding.recyclerFrame1.adapter = frame1Adapter
    frame1Adapter.setOnItemClickListener(
    object : Frame1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame1RowModel) {
        onClickRecyclerFrame1(view, position, item)
      }
    }
    )
    viewModel.frame1List.observe(requireActivity()) {
      frame1Adapter.updateData(it)
    }
    val topChartsAdapter = TopChartsAdapter(viewModel.topChartsList.value?:mutableListOf())
    binding.recyclerTopCharts.adapter = topChartsAdapter
    topChartsAdapter.setOnItemClickListener(
    object : TopChartsAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TopchartsRowModel) {
        onClickRecyclerTopCharts(view, position, item)
      }
    }
    )
    viewModel.topChartsList.observe(requireActivity()) {
      topChartsAdapter.updateData(it)
    }
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtSeeAll1.setOnClickListener {
      val destIntent = PopularArtistsActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
    binding.txtSeeAll.setOnClickListener {
      val destIntent = TrendingNowActivity.getIntent(requireActivity(), null)
      startActivity(destIntent)
      requireActivity().onBackPressed()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: FrameRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFrame1(
    view: View,
    position: Int,
    item: Frame1RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerTopCharts(
    view: View,
    position: Int,
    item: TopchartsRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "HOME_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeFragment {
      val fragment = HomeFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
