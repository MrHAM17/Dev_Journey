package com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivitySubscribeBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.paymentmethod.ui.PaymentMethodActivity
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.model.SubscribeRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.subscribe.`data`.viewmodel.SubscribeVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class SubscribeActivity : BaseActivity<ActivitySubscribeBinding>(R.layout.activity_subscribe) {
  private val viewModel: SubscribeVM by viewModels<SubscribeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val subscribeAdapter = SubscribeAdapter(viewModel.subscribeList.value?:mutableListOf())
    binding.recyclerSubscribe.adapter = subscribeAdapter
    subscribeAdapter.setOnItemClickListener(
    object : SubscribeAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : SubscribeRowModel) {
        onClickRecyclerSubscribe(view, position, item)
      }
    }
    )
    viewModel.subscribeList.observe(this) {
      subscribeAdapter.updateData(it)
    }
    binding.subscribeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerSubscribe(
    view: View,
    position: Int,
    item: SubscribeRowModel
  ): Unit {
    when(view.id) {
      R.id.linearAutoLayoutVertical ->  {
        val destIntent = PaymentMethodActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }
  }

  companion object {
    const val TAG: String = "SUBSCRIBE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, SubscribeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
