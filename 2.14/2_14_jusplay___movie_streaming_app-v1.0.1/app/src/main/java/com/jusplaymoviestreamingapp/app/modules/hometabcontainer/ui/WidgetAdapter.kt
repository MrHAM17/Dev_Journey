package com.jusplaymoviestreamingapp.app.modules.hometabcontainer.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.jusplaymoviestreamingapp.app.databinding.SlideritemHomeTabContainer1Binding
import com.jusplaymoviestreamingapp.app.modules.hometabcontainer.`data`.model.ImageSliderWidgetModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class WidgetAdapter(
  val dataList: ArrayList<ImageSliderWidgetModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderWidgetModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemHomeTabContainer1Binding) {
      binding.imageSliderWidgetModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemHomeTabContainer1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}
