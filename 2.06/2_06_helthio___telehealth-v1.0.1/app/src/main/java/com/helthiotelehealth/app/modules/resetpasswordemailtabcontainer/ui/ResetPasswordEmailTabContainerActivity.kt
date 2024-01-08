package com.helthiotelehealth.app.modules.resetpasswordemailtabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityResetPasswordEmailTabContainerBinding
import com.helthiotelehealth.app.modules.resetpasswordemailtabcontainer.`data`.viewmodel.ResetPasswordEmailTabContainerVM
import kotlin.String
import kotlin.Unit

class ResetPasswordEmailTabContainerActivity :
    BaseActivity<ActivityResetPasswordEmailTabContainerBinding>(R.layout.activity_reset_password_email_tab_container)
    {
  private val viewModel: ResetPasswordEmailTabContainerVM by
      viewModels<ResetPasswordEmailTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.resetPasswordEmailTabContainerVM = viewModel
    val adapter =
    ResetPasswordEmailTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = ResetPasswordEmailTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "RESET_PASSWORD_EMAIL_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, ResetPasswordEmailTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
