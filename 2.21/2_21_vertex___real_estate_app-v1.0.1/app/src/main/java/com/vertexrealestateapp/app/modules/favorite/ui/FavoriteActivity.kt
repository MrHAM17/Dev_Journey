package com.vertexrealestateapp.app.modules.favorite.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityFavoriteBinding
import com.vertexrealestateapp.app.modules.favorite.`data`.viewmodel.FavoriteVM
import kotlin.String
import kotlin.Unit

class FavoriteActivity : BaseActivity<ActivityFavoriteBinding>(R.layout.activity_favorite) {
  private val viewModel: FavoriteVM by viewModels<FavoriteVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.favoriteVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "FAVORITE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, FavoriteActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
