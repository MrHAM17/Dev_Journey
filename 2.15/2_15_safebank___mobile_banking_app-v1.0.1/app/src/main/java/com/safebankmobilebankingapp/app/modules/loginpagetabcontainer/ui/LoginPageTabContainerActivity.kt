package com.safebankmobilebankingapp.app.modules.loginpagetabcontainer.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.google.android.material.tabs.TabLayoutMediator
import com.safebankmobilebankingapp.app.R
import com.safebankmobilebankingapp.app.appcomponents.base.BaseActivity
import com.safebankmobilebankingapp.app.databinding.ActivityLoginPageTabContainerBinding
import com.safebankmobilebankingapp.app.modules.loginpagetabcontainer.`data`.viewmodel.LoginPageTabContainerVM
import kotlin.String
import kotlin.Unit

class LoginPageTabContainerActivity :
    BaseActivity<ActivityLoginPageTabContainerBinding>(R.layout.activity_login_page_tab_container) {
  private val viewModel: LoginPageTabContainerVM by viewModels<LoginPageTabContainerVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.loginPageTabContainerVM = viewModel
    val adapter = LoginPageTabContainerActivityPagerAdapter(supportFragmentManager,lifecycle)
    binding.viewPagerTabBarView.adapter = adapter
    TabLayoutMediator(binding.tabLayoutTabview,binding.viewPagerTabBarView) { tab, position ->
      tab.text = LoginPageTabContainerActivityPagerAdapter.title[position]
      }.attach()
    }

    override fun setUpClicks(): Unit {
    }

    companion object {
      const val TAG: String = "LOGIN_PAGE_TAB_CONTAINER_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, LoginPageTabContainerActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
