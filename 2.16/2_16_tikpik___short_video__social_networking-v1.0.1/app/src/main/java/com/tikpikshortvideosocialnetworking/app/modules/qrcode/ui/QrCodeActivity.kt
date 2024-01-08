package com.tikpikshortvideosocialnetworking.app.modules.qrcode.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityQrCodeBinding
import com.tikpikshortvideosocialnetworking.app.modules.qrcode.`data`.viewmodel.QrCodeVM
import kotlin.String
import kotlin.Unit

class QrCodeActivity : BaseActivity<ActivityQrCodeBinding>(R.layout.activity_qr_code) {
  private val viewModel: QrCodeVM by viewModels<QrCodeVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.qrCodeVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "QR_CODE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, QrCodeActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
