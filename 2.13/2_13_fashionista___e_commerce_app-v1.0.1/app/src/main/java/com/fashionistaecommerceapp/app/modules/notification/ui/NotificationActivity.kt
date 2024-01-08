package com.fashionistaecommerceapp.app.modules.notification.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.fashionistaecommerceapp.app.R
import com.fashionistaecommerceapp.app.appcomponents.base.BaseActivity
import com.fashionistaecommerceapp.app.databinding.ActivityNotificationBinding
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.Frame4RowModel
import com.fashionistaecommerceapp.app.modules.notification.`data`.model.Frame5RowModel
import com.fashionistaecommerceapp.app.modules.notification.`data`.viewmodel.NotificationVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationActivity :
    BaseActivity<ActivityNotificationBinding>(R.layout.activity_notification) {
  private val viewModel: NotificationVM by viewModels<NotificationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val frameAdapter = FrameAdapter(viewModel.frameList.value?:mutableListOf())
    binding.recyclerFrame.adapter = frameAdapter
    frameAdapter.setOnItemClickListener(
    object : FrameAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame4RowModel) {
        onClickRecyclerFrame(view, position, item)
      }
    }
    )
    viewModel.frameList.observe(this) {
      frameAdapter.updateData(it)
    }
    val frame1Adapter = Frame1Adapter(viewModel.frame1List.value?:mutableListOf())
    binding.recyclerFrame1.adapter = frame1Adapter
    frame1Adapter.setOnItemClickListener(
    object : Frame1Adapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : Frame5RowModel) {
        onClickRecyclerFrame1(view, position, item)
      }
    }
    )
    viewModel.frame1List.observe(this) {
      frame1Adapter.updateData(it)
    }
    binding.notificationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowDown.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerFrame(
    view: View,
    position: Int,
    item: Frame4RowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerFrame1(
    view: View,
    position: Int,
    item: Frame5RowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "NOTIFICATION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, NotificationActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
