package com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.tunecastmusicstreamingpodcastapp.app.R
import com.tunecastmusicstreamingpodcastapp.app.appcomponents.base.BaseActivity
import com.tunecastmusicstreamingpodcastapp.app.databinding.ActivityTrendingNowBinding
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.model.TrendingnowRowModel
import com.tunecastmusicstreamingpodcastapp.app.modules.trendingnow.`data`.viewmodel.TrendingNowVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class TrendingNowActivity : BaseActivity<ActivityTrendingNowBinding>(R.layout.activity_trending_now)
    {
  private val viewModel: TrendingNowVM by viewModels<TrendingNowVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val trendingNowAdapter =
    TrendingNowAdapter(viewModel.trendingNowList.value?:mutableListOf())
    binding.recyclerTrendingNow.adapter = trendingNowAdapter
    trendingNowAdapter.setOnItemClickListener(
    object : TrendingNowAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : TrendingnowRowModel) {
        onClickRecyclerTrendingNow(view, position, item)
      }
    }
    )
    viewModel.trendingNowList.observe(this) {
      trendingNowAdapter.updateData(it)
    }
    binding.trendingNowVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  fun onClickRecyclerTrendingNow(
    view: View,
    position: Int,
    item: TrendingnowRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "TRENDING_NOW_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, TrendingNowActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
