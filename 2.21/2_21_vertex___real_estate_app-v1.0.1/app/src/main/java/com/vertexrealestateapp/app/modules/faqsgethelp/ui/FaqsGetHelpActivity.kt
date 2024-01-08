package com.vertexrealestateapp.app.modules.faqsgethelp.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.vertexrealestateapp.app.R
import com.vertexrealestateapp.app.appcomponents.base.BaseActivity
import com.vertexrealestateapp.app.databinding.ActivityFaqsGetHelpBinding
import com.vertexrealestateapp.app.modules.faqsgethelp.`data`.viewmodel.FaqsGetHelpVM
import kotlin.Boolean
import kotlin.String
import kotlin.Unit

class FaqsGetHelpActivity :
    BaseActivity<ActivityFaqsGetHelpBinding>(R.layout.activity_faqs_get_help) {
  private val viewModel: FaqsGetHelpVM by viewModels<FaqsGetHelpVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.faqsGetHelpVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  private fun setUpSearchViewSearchListener(): Unit {
    binding.searchViewSearch.setOnQueryTextListener(object : SearchView.OnQueryTextListener {
      override fun onQueryTextSubmit(p0 : String) : Boolean {
        // Performs search when user hit
        // the search button on the keyboard
        return false
      }
      override fun onQueryTextChange(p0 : String) : Boolean {
        // Start filtering the list as user
        // start entering the characters
        return false
      }
      })
    }

    companion object {
      const val TAG: String = "FAQS_GET_HELP_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, FaqsGetHelpActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
