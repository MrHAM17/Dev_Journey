package com.comforthotelbookingapp.app.modules.forgotpassword.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.comforthotelbookingapp.app.R
import com.comforthotelbookingapp.app.appcomponents.base.BaseActivity
import com.comforthotelbookingapp.app.databinding.ActivityForgotPasswordBinding
import com.comforthotelbookingapp.app.modules.forgotpassword.`data`.model.ForgotpasswordRowModel
import com.comforthotelbookingapp.app.modules.forgotpassword.`data`.viewmodel.ForgotPasswordVM
import com.comforthotelbookingapp.app.modules.forgotpasswordtypeotp.ui.ForgotPasswordTypeOtpActivity
import kotlin.Int
import kotlin.String
import kotlin.Unit

class ForgotPasswordActivity :
    BaseActivity<ActivityForgotPasswordBinding>(R.layout.activity_forgot_password) {
  private val viewModel: ForgotPasswordVM by viewModels<ForgotPasswordVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val forgotPasswordAdapter =
    ForgotPasswordAdapter(viewModel.forgotPasswordList.value?:mutableListOf())
    binding.recyclerForgotPassword.adapter = forgotPasswordAdapter
    forgotPasswordAdapter.setOnItemClickListener(
    object : ForgotPasswordAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ForgotpasswordRowModel) {
        onClickRecyclerForgotPassword(view, position, item)
      }
    }
    )
    viewModel.forgotPasswordList.observe(this) {
      forgotPasswordAdapter.updateData(it)
    }
    binding.forgotPasswordVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
    binding.btnContinue.setOnClickListener {
      val destIntent = ForgotPasswordTypeOtpActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  fun onClickRecyclerForgotPassword(
    view: View,
    position: Int,
    item: ForgotpasswordRowModel
  ): Unit {
    when(view.id) {
    }
  }

  companion object {
    const val TAG: String = "FORGOT_PASSWORD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ForgotPasswordActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
