package com.housitbuyrentsellproperty.app.modules.userempty.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityUserEmptyBinding
import com.housitbuyrentsellproperty.app.extensions.loadFragment
import com.housitbuyrentsellproperty.app.modules.home.ui.HomeFragment
import com.housitbuyrentsellproperty.app.modules.userempty.`data`.viewmodel.UserEmptyVM
import com.housitbuyrentsellproperty.app.modules.usersuccess.ui.UserSuccessBottomsheet
import kotlin.String
import kotlin.Unit

class UserEmptyActivity : BaseActivity<ActivityUserEmptyBinding>(R.layout.activity_user_empty) {
  private val viewModel: UserEmptyVM by viewModels<UserEmptyVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.userEmptyVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSkip.setOnClickListener {
      val destFragment = HomeFragment.getInstance(null)
      this.loadFragment(
      R.id.fragmentContainer,
      destFragment,
      bundle = destFragment.arguments,
      tag = HomeFragment.TAG,
      addToBackStack = true,
      add = false,
      enter = null,
      exit = null,
      )
    }
    binding.btnFinish.setOnClickListener {
      val destFragment = UserSuccessBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, UserSuccessBottomsheet.TAG)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "USER_EMPTY_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, UserEmptyActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
