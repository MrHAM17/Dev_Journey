package com.vertexrealestateapp.app.modules.notification.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityNotificationBinding
import com.vertexrealestateapp.app.modules.notification.`data`.model.ChartlineRowModel
import com.vertexrealestateapp.app.modules.notification.`data`.model.SeventyfourRowModel
import com.vertexrealestateapp.app.modules.notification.`data`.viewmodel.NotificationVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class NotificationActivity :
    BaseActivity<ActivityNotificationBinding>(R.layout.activity_notification) {
  private val viewModel: NotificationVM by viewModels<NotificationVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val seventyFourAdapter =
    SeventyFourAdapter(viewModel.seventyFourList.value?:mutableListOf())
    binding.recyclerSeventyFour.adapter = seventyFourAdapter
    seventyFourAdapter.setOnItemClickListener(
    object : SeventyFourAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SeventyfourRowModel) {
        onClickRecyclerSeventyFour(view, position, item)
      }
    }
    )
    viewModel.seventyFourList.observe(this) {
      seventyFourAdapter.updateData(it)
    }
    val chartLineAdapter = ChartLineAdapter(viewModel.chartLineList.value?:mutableListOf())
    binding.recyclerChartLine.adapter = chartLineAdapter
    chartLineAdapter.setOnItemClickListener(
    object : ChartLineAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChartlineRowModel) {
        onClickRecyclerChartLine(view, position, item)
      }
    }
    )
    viewModel.chartLineList.observe(this) {
      chartLineAdapter.updateData(it)
    }
    binding.notificationVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerSeventyFour(
    view: View,
    position: Int,
    item: SeventyfourRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerChartLine(
    view: View,
    position: Int,
    item: ChartlineRowModel
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
