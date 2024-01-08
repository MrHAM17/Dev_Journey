package com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityManageAccountsBinding
import com.tikpikshortvideosocialnetworking.app.modules.manageaccounts.`data`.viewmodel.ManageAccountsVM
import kotlin.String
import kotlin.Unit

class ManageAccountsActivity :
    BaseActivity<ActivityManageAccountsBinding>(R.layout.activity_manage_accounts) {
  private val viewModel: ManageAccountsVM by viewModels<ManageAccountsVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.manageAccountsVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "MANAGE_ACCOUNTS_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ManageAccountsActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
