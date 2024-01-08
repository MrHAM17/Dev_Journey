package com.todo.app.modules.home.ui

import androidx.activity.viewModels
import com.todo.app.R
import com.todo.app.appcomponents.base.BaseActivity
import com.todo.app.databinding.ActivityHomeBinding
import com.todo.app.modules.home.`data`.viewmodel.HomeVM
import kotlin.String
import kotlin.Unit

class HomeActivity : BaseActivity<ActivityHomeBinding>(R.layout.activity_home) {
  private val viewModel: HomeVM by viewModels<HomeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.homeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "HOME_ACTIVITY"

  }
}
