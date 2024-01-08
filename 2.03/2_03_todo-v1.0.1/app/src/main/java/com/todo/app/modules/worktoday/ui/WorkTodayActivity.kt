package com.todo.app.modules.worktoday.ui

import androidx.activity.viewModels
import com.todo.app.R
import com.todo.app.appcomponents.base.BaseActivity
import com.todo.app.databinding.ActivityWorkTodayBinding
import com.todo.app.modules.signup.ui.SignupActivity
import com.todo.app.modules.worktoday.`data`.viewmodel.WorkTodayVM
import kotlin.String
import kotlin.Unit

class WorkTodayActivity : BaseActivity<ActivityWorkTodayBinding>(R.layout.activity_work_today) {
  private val viewModel: WorkTodayVM by viewModels<WorkTodayVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.workTodayVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      // TODO please, add your navigation code here
      finish()
    }
    binding.btnMakeAWishList.setOnClickListener {
      val destIntent = SignupActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "WORK_TODAY_ACTIVITY"

  }
}
