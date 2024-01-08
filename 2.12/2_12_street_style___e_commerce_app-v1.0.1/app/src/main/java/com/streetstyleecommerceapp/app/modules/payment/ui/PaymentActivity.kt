package com.streetstyleecommerceapp.app.modules.payment.ui

import android.net.Uri
import androidx.activity.viewModels
import com.streetstyleecommerceapp.app.R
import com.streetstyleecommerceapp.app.appcomponents.base.BaseActivity
import com.streetstyleecommerceapp.app.databinding.ActivityPaymentBinding
import com.streetstyleecommerceapp.app.modules.payment.`data`.model.ImageSliderCardModel
import com.streetstyleecommerceapp.app.modules.payment.`data`.viewmodel.PaymentVM
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class PaymentActivity : BaseActivity<ActivityPaymentBinding>(R.layout.activity_payment) {
  private val imageUri: Uri =
      Uri.parse("android.resource://com.streetstyleecommerceapp.app/drawable/img_television")


  private val imageSliderCardItems: ArrayList<ImageSliderCardModel> =
      arrayListOf(ImageSliderCardModel(imageTelevision =
  imageUri.toString()),ImageSliderCardModel(imageTelevision = imageUri.toString()))


  private val viewModel: PaymentVM by viewModels<PaymentVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val cardAdapter = CardAdapter(imageSliderCardItems,true)
    binding.imageSliderCard.adapter = cardAdapter
    binding.paymentVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderCard.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderCard.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "PAYMENT_ACTIVITY"

  }
}
