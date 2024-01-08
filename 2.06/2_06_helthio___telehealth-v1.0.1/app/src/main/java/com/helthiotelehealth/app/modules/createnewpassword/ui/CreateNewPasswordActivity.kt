package com.helthiotelehealth.app.modules.createnewpassword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.helthiotelehealth.app.R
import com.helthiotelehealth.app.appcomponents.base.BaseActivity
import com.helthiotelehealth.app.databinding.ActivityCreateNewPasswordBinding
import com.helthiotelehealth.app.modules.createnewpassword.`data`.viewmodel.CreateNewPasswordVM
import kotlin.String
import kotlin.Unit

class CreateNewPasswordActivity :
    BaseActivity<ActivityCreateNewPasswordBinding>(R.layout.activity_create_new_password) {
  private val viewModel: CreateNewPasswordVM by viewModels<CreateNewPasswordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.createNewPasswordVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnCreatePassword.setOnClickListener {
      // TODO please, add your navigation code here
    }
  }

  companion object {
    const val TAG: String = "CREATE_NEW_PASSWORD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, CreateNewPasswordActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
