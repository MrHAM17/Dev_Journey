package com.fashionistaecommerceapp.app.modules.orderstatus.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityOrderStatusBinding
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.ImageSliderUnsplashVFrcRtEQKLEightModel
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.model.OrderstatusRowModel
import com.fashionistaecommerceapp.app.modules.orderstatus.`data`.viewmodel.OrderStatusVM
import com.fashionistaecommerceapp.app.modules.settings.ui.SettingsActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class OrderStatusActivity : BaseActivity<ActivityOrderStatusBinding>(R.layout.activity_order_status)
    {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.fashionistaecommerceapp.app/drawable/img_unsplash_vfrcrteqkl8")


  private val imageSliderUnsplashVFrcRtEQKLEightItems:
      ArrayList<ImageSliderUnsplashVFrcRtEQKLEightModel> =
      arrayListOf(ImageSliderUnsplashVFrcRtEQKLEightModel(imageUnsplashVFrcRtEQKLEight =
  imageUri.toString()),ImageSliderUnsplashVFrcRtEQKLEightModel(imageUnsplashVFrcRtEQKLEight
  = imageUri.toString()))


  private val viewModel: OrderStatusVM by viewModels<OrderStatusVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val unsplashVFrcRtEQKLEightAdapter =
    UnsplashVFrcRtEQKLEightAdapter(imageSliderUnsplashVFrcRtEQKLEightItems,true)
    binding.imageSliderUnsplashVFrcRtEQKLEight.adapter = unsplashVFrcRtEQKLEightAdapter
    val orderStatusAdapter =
    OrderStatusAdapter(viewModel.orderStatusList.value?:mutableListOf())
    binding.recyclerOrderStatus.adapter = orderStatusAdapter
    orderStatusAdapter.setOnItemClickListener(
    object : OrderStatusAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : OrderstatusRowModel) {
        onClickRecyclerOrderStatus(view, position, item)
      }
    }
    )
    viewModel.orderStatusList.observe(this) {
      orderStatusAdapter.updateData(it)
    }
    binding.orderStatusVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderUnsplashVFrcRtEQKLEight.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderUnsplashVFrcRtEQKLEight.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
    binding.btnConfirmDelivery.setOnClickListener {
      val destIntent = SettingsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerOrderStatus(
    view: View,
    position: Int,
    item: OrderstatusRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "ORDER_STATUS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, OrderStatusActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
