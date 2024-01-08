package com.housitbuyrentsellproperty.app.modules.formdetail.ui

import androidx.activity.viewModels
import com.housitbuyrentsellproperty.app.R
import com.housitbuyrentsellproperty.app.appcomponents.base.BaseActivity
import com.housitbuyrentsellproperty.app.databinding.ActivityFormDetailBinding
import com.housitbuyrentsellproperty.app.modules.addlocation.ui.AddLocationActivity
import com.housitbuyrentsellproperty.app.modules.formdetail.`data`.viewmodel.FormDetailVM
import kotlin.String
import kotlin.Unit

class FormDetailActivity : BaseActivity<ActivityFormDetailBinding>(R.layout.activity_form_detail) {
  private val viewModel: FormDetailVM by viewModels<FormDetailVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.formDetailVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = AddLocationActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "FORM_DETAIL_ACTIVITY"

  }
}
