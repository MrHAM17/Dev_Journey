package com.vertexrealestateapp.app.modules.recentlyviews.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityRecentlyViewsBinding
import com.vertexrealestateapp.app.modules.recentlyviews.`data`.viewmodel.RecentlyViewsVM
import kotlin.String
import kotlin.Unit

class RecentlyViewsActivity :
    BaseActivity<ActivityRecentlyViewsBinding>(R.layout.activity_recently_views) {
  private val viewModel: RecentlyViewsVM by viewModels<RecentlyViewsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.recentlyViewsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "RECENTLY_VIEWS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, RecentlyViewsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
