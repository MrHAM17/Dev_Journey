package com.vertexrealestateapp.app.modules.addnewpropertydecsription.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityAddNewPropertyDecsriptionBinding
import com.vertexrealestateapp.app.modules.addnewpropertydecsription.`data`.viewmodel.AddNewPropertyDecsriptionVM
import com.vertexrealestateapp.app.modules.addnewpropertyhomefacts.ui.AddNewPropertyHomeFactsActivity
import kotlin.String
import kotlin.Unit

class AddNewPropertyDecsriptionActivity :
    BaseActivity<ActivityAddNewPropertyDecsriptionBinding>(R.layout.activity_add_new_property_decsription)
    {
  private val viewModel: AddNewPropertyDecsriptionVM by viewModels<AddNewPropertyDecsriptionVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.addNewPropertyDecsriptionVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
    binding.btnNext.setOnClickListener {
      val destIntent = AddNewPropertyHomeFactsActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "ADD_NEW_PROPERTY_DECSRIPTION_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, AddNewPropertyDecsriptionActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
