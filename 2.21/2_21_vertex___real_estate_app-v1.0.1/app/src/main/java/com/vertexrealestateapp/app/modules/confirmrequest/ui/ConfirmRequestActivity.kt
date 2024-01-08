package com.vertexrealestateapp.app.modules.confirmrequest.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityConfirmRequestBinding
import com.vertexrealestateapp.app.modules.confirmrequest.`data`.viewmodel.ConfirmRequestVM
import com.vertexrealestateapp.app.modules.confirmrequestbottomsheet.ui.ConfirmRequestBottomSheetBottomsheet
import kotlin.String
import kotlin.Unit

class ConfirmRequestActivity :
    BaseActivity<ActivityConfirmRequestBinding>(R.layout.activity_confirm_request) {
  private val viewModel: ConfirmRequestVM by viewModels<ConfirmRequestVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.confirmRequestVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnDone.setOnClickListener {
      val destFragment = ConfirmRequestBottomSheetBottomsheet.getInstance(null)
      destFragment.show(this.supportFragmentManager, ConfirmRequestBottomSheetBottomsheet.TAG)
    }
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "CONFIRM_REQUEST_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ConfirmRequestActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
