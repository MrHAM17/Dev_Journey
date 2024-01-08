package com.hiredjobsearch.app.modules.language.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.activity.viewModels
import com.hiredjobsearch.app.R
import com.hiredjobsearch.app.appcomponents.base.BaseActivity
import com.hiredjobsearch.app.databinding.ActivityLanguageBinding
import com.hiredjobsearch.app.modules.language.`data`.model.ChinesesRowModel
import com.hiredjobsearch.app.modules.language.`data`.model.EnglishukRowModel
import com.hiredjobsearch.app.modules.language.`data`.viewmodel.LanguageVM
import kotlin.Int
import kotlin.String
import kotlin.Unit

class LanguageActivity : BaseActivity<ActivityLanguageBinding>(R.layout.activity_language) {
  private val viewModel: LanguageVM by viewModels<LanguageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    val englishUKAdapter = EnglishUKAdapter(viewModel.englishUKList.value?:mutableListOf())
    binding.recyclerEnglishUK.adapter = englishUKAdapter
    englishUKAdapter.setOnItemClickListener(
    object : EnglishUKAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : EnglishukRowModel) {
        onClickRecyclerEnglishUK(view, position, item)
      }
    }
    )
    viewModel.englishUKList.observe(this) {
      englishUKAdapter.updateData(it)
    }
    val chinesesAdapter = ChinesesAdapter(viewModel.chinesesList.value?:mutableListOf())
    binding.recyclerChineses.adapter = chinesesAdapter
    chinesesAdapter.setOnItemClickListener(
    object : ChinesesAdapter.OnItemClickListener {
      override fun onItemClick(view:View, position:Int, item : ChinesesRowModel) {
        onClickRecyclerChineses(view, position, item)
      }
    }
    )
    viewModel.chinesesList.observe(this) {
      chinesesAdapter.updateData(it)
    }
    binding.languageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowBack.setOnClickListener {
      finish()
    }
  }

  fun onClickRecyclerEnglishUK(
    view: View,
    position: Int,
    item: EnglishukRowModel
  ): Unit {
    when(view.id) {
    }
  }

  fun onClickRecyclerChineses(
    view: View,
    position: Int,
    item: ChinesesRowModel
  ): Unit {
    when(view.id) {
    }
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
