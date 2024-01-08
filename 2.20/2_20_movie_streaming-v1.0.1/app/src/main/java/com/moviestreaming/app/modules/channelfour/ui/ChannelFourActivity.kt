package com.moviestreaming.app.modules.channelfour.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.moviestreaming.app.R
import com.moviestreaming.app.appcomponents.base.BaseActivity
import com.moviestreaming.app.databinding.ActivityChannelFourBinding
import com.moviestreaming.app.modules.channelfour.`data`.model.ChannelfourRowModel
import com.moviestreaming.app.modules.channelfour.`data`.viewmodel.ChannelFourVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ChannelFourActivity : BaseActivity<ActivityChannelFourBinding>(R.layout.activity_channel_four)
    {
  private val viewModel: ChannelFourVM by viewModels<ChannelFourVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val channelFourAdapter =
    ChannelFourAdapter(viewModel.channelFourList.value?:mutableListOf())
    binding.recyclerChannelFour.adapter = channelFourAdapter
    channelFourAdapter.setOnItemClickListener(
    object : ChannelFourAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChannelfourRowModel) {
        onClickRecyclerChannelFour(view, position, item)
      }
    }
    )
    viewModel.channelFourList.observe(this) {
      channelFourAdapter.updateData(it)
    }
    binding.channelFourVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerChannelFour(
    view: View,
    position: Int,
    item: ChannelfourRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "CHANNEL_FOUR_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChannelFourActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
