package com.tikpikshortvideosocialnetworking.app.modules.fillyourprofileblankform.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityFillYourProfileBlankFormBinding
import com.tikpikshortvideosocialnetworking.app.extensions.loadFragment
import com.tikpikshortvideosocialnetworking.app.modules.createnewpin.ui.CreateNewPinFragment
import com.tikpikshortvideosocialnetworking.app.modules.fillyourprofileblankform.`data`.viewmodel.FillYourProfileBlankFormVM
import com.tikpikshortvideosocialnetworking.app.modules.homecontainer.ui.HomeContainerActivity
import kotlin.String
import kotlin.Unit

class FillYourProfileBlankFormActivity :
    BaseActivity<ActivityFillYourProfileBlankFormBinding>(R.layout.activity_fill_your_profile_blank_form)
    {
  private val viewModel: FillYourProfileBlankFormVM by viewModels<FillYourProfileBlankFormVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.fillYourProfileBlankFormVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnContinue.setOnClickListener {
      val destFragment = CreateNewPinFragment.getInstance(null)
      this.loadFragment(
          R.id.fragmentContainer,
          destFragment,
          bundle = destFragment.arguments, 
          tag = CreateNewPinFragment.TAG, 
          addToBackStack = true, 
          add = false, 
          enter = null, 
          exit = null, 
          )
    }
    binding.btnSkip.setOnClickListener {
      val destIntent = HomeContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "FILL_YOUR_PROFILE_BLANK_FORM_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, FillYourProfileBlankFormActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
