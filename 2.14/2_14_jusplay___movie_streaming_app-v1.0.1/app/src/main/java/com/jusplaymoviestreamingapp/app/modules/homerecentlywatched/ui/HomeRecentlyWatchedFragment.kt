package com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.ui

import android.os.Bundle
import android.view.View
import androidx.fragment.app.viewModels
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseFragment
import com.jusplaymoviestreamingapp.app.databinding.FragmentHomeRecentlyWatchedBinding
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.Frame1RowModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.FrameRowModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.model.ImageSliderWidgetModel
import com.jusplaymoviestreamingapp.app.modules.homerecentlywatched.`data`.viewmodel.HomeRecentlyWatchedVM
import kotlin.Int
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class HomeRecentlyWatchedFragment :
    BaseFragment<FragmentHomeRecentlyWatchedBinding>(R.layout.fragment_home_recently_watched) {
  private val imageSliderWidgetItems: ArrayList<ImageSliderWidgetModel> = arrayListOf()


  private val viewModel: HomeRecentlyWatchedVM by viewModels<HomeRecentlyWatchedVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = arguments
    val widgetAdapter = WidgetAdapter(imageSliderWidgetItems,true)
    binding.imageSliderWidget.adapter = widgetAdapter
    binding.imageSliderWidget.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorPagerIndicator.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorPagerIndicator.updateIndicatorCounts(binding.imageSliderWidget.indicatorCount)
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
    binding.homeRecentlyWatchedVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderWidget.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderWidget.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
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

  companion object {
    const val TAG: String = "HOME_RECENTLY_WATCHED_FRAGMENT"


    fun getInstance(bundle: Bundle?): HomeRecentlyWatchedFragment {
      val fragment = HomeRecentlyWatchedFragment()
      fragment.arguments = bundle
      return fragment
    }
  }
}
