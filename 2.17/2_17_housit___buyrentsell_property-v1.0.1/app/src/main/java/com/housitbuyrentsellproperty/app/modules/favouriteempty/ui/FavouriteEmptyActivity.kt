package com.housitbuyrentsellproperty.app.modules.favouriteempty.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityFavouriteEmptyBinding
import com.housitbuyrentsellproperty.app.modules.favouriteempty.`data`.viewmodel.FavouriteEmptyVM
import kotlin.String
import kotlin.Unit

class FavouriteEmptyActivity :
    BaseActivity<ActivityFavouriteEmptyBinding>(R.layout.activity_favourite_empty) {
  private val viewModel: FavouriteEmptyVM by viewModels<FavouriteEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.favouriteEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "FAVOURITE_EMPTY_ACTIVITY"

  }
}
