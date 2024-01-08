package com.ecommerce.app.modules.choosecreditordebitcard.ui

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Bundle
import androidx.activity.viewModels
import com.ecommerce.app.R
import com.ecommerce.app.appcomponents.base.BaseActivity
import com.ecommerce.app.databinding.ActivityChooseCreditOrDebitCardBinding
import com.ecommerce.app.modules.choosecreditordebitcard.`data`.model.ImageSliderUserModel
import com.ecommerce.app.modules.choosecreditordebitcard.`data`.viewmodel.ChooseCreditOrDebitCardVM
import com.ecommerce.app.modules.successscreen.ui.SuccessScreenActivity
import kotlin.String
import kotlin.Unit
import kotlin.collections.ArrayList

class ChooseCreditOrDebitCardActivity :
    BaseActivity<ActivityChooseCreditOrDebitCardBinding>(R.layout.activity_choose_credit_or_debit_card)
    {
  private val imageUri: Uri = Uri.parse("android.resource://com.ecommerce.app/drawable/img_user")


  private val imageSliderUserItems: ArrayList<ImageSliderUserModel> =
      arrayListOf(ImageSliderUserModel(imageUser =
  imageUri.toString()),ImageSliderUserModel(imageUser = imageUri.toString()))


  private val viewModel: ChooseCreditOrDebitCardVM by viewModels<ChooseCreditOrDebitCardVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val userAdapter = UserAdapter(imageSliderUserItems,true)
    binding.imageSliderUser.adapter = userAdapter
    binding.imageSliderUser.onIndicatorProgress = { selectingPosition, progress ->
      binding.indicatorSettings.onPageScrolled(selectingPosition, progress)
    }
    binding.indicatorSettings.updateIndicatorCounts(binding.imageSliderUser.indicatorCount)
    binding.chooseCreditOrDebitCardVM = viewModel
  }

  override fun onPause(): Unit {
    binding.imageSliderUser.pauseAutoScroll()
    super.onPause()
  }

  override fun onResume(): Unit {
    super.onResume()
    binding.imageSliderUser.resumeAutoScroll()
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnPay76686.setOnClickListener {
      val destIntent = SuccessScreenActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "CHOOSE_CREDIT_OR_DEBIT_CARD_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, ChooseCreditOrDebitCardActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
