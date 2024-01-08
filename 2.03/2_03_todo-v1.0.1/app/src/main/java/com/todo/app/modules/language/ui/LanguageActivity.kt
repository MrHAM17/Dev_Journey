package com.todo.app.modules.language.ui

import androidx.activity.viewModels
import com.todo.app.R
import com.todo.app.appcomponents.base.BaseActivity
import com.todo.app.databinding.ActivityLanguageBinding
import com.todo.app.modules.language.`data`.viewmodel.LanguageVM
import com.todo.app.modules.login.ui.LoginActivity
import com.todo.app.modules.signup.ui.SignupActivity
import kotlin.String
import kotlin.Unit

class LanguageActivity : BaseActivity<ActivityLanguageBinding>(R.layout.activity_language) {
  private val viewModel: LanguageVM by viewModels<LanguageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.languageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnSave.setOnClickListener {
      val destIntent = SignupActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnIndonesian.setOnClickListener {
      val destIntent = LoginActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.btnArrowLeft.setOnClickListener {
      // TODO please, add your navigation code here
      finish()
    }
  }

  companion object {
    const val TAG: String = "LANGUAGE_ACTIVITY"

  }
}
