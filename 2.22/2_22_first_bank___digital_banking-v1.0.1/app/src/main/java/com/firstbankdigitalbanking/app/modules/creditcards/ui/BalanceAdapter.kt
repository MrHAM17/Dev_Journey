package com.firstbankdigitalbanking.app.modules.creditcards.ui

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.viewbinding.ViewBinding
import com.asksira.loopingviewpager.LoopingPagerAdapter
import com.firstbankdigitalbanking.app.databinding.SlideritemCreditCards1Binding
import com.firstbankdigitalbanking.app.modules.creditcards.`data`.model.ImageSliderBalanceModel
import java.util.ArrayList
import kotlin.Boolean
import kotlin.Int

class BalanceAdapter(
  val dataList: ArrayList<ImageSliderBalanceModel>,
  val mIsInfinite: Boolean
) : LoopingPagerAdapter<ImageSliderBalanceModel>(dataList, mIsInfinite) {
  override fun bindView(
    binding: ViewBinding,
    listPosition: Int,
    viewType: Int
  ) {
    if (binding is SlideritemCreditCards1Binding) {
      binding.imageSliderBalanceModel = dataList[listPosition]
    }
  }

  override fun inflateView(
    viewType: Int,
    container: ViewGroup,
    listPosition: Int
  ): ViewBinding {
    val itemBinding =  SlideritemCreditCards1Binding.inflate(
    LayoutInflater.from(container.context),
                    container,
                    false
    )
    return itemBinding
  }
}
