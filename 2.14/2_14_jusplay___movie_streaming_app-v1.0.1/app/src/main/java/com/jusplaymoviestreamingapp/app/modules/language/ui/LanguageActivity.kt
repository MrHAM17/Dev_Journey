package com.jusplaymoviestreamingapp.app.modules.language.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import com.jusplaymoviestreamingapp.app.R
import com.jusplaymoviestreamingapp.app.appcomponents.base.BaseActivity
import com.jusplaymoviestreamingapp.app.databinding.ActivityLanguageBinding
import com.jusplaymoviestreamingapp.app.modules.language.`data`.model.LanguageRowModel
import com.jusplaymoviestreamingapp.app.modules.language.`data`.viewmodel.LanguageVM
import kotlin.Boolean
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LanguageActivity : BaseActivity<ActivityLanguageBinding>(R.layout.activity_language) {
  private val viewModel: LanguageVM by viewModels<LanguageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val languageAdapter = LanguageAdapter(viewModel.languageList.value?:mutableListOf())
    binding.recyclerLanguage.adapter = languageAdapter
    languageAdapter.setOnItemClickListener(
    object : LanguageAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : LanguageRowModel) {
        onClickRecyclerLanguage(view, position, item)
      }
    }
    )
    viewModel.languageList.observe(this) {
      languageAdapter.updateData(it)
    }
    binding.languageVM = viewModel
    setUpSearchViewSearchListener()
  }

  override fun setUpClicks(): Unit {
    binding.btnArrowLeft.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerLanguage(
    view: View,
    position: Int,
    item: LanguageRowModel
  ): Unit {
    when(view.id) {
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
      const val TAG: String = "LANGUAGE_ACTIVITY"


      fun getIntent(context: Context, bundle: Bundle?): Intent {
        val destIntent = Intent(context, LanguageActivity::class.java)
        destIntent.putExtra("bundle", bundle)
        return destIntent
      }
    }
  }
