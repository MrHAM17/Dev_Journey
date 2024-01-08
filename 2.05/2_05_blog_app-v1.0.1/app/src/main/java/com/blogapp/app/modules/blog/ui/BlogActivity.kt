package com.blogapp.app.modules.blog.ui

import androidx.activity.viewModels
import com.blogapp.app.R
import com.blogapp.app.appcomponents.base.BaseActivity
import com.blogapp.app.databinding.ActivityBlogBinding
import com.blogapp.app.modules.blog.`data`.viewmodel.BlogVM
import kotlin.String
import kotlin.Unit

class BlogActivity : BaseActivity<ActivityBlogBinding>(R.layout.activity_blog) {
  private val viewModel: BlogVM by viewModels<BlogVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.blogVM = viewModel
  }

  override fun setUpClicks(): Unit {
  }

  companion object {
    const val TAG: String = "BLOG_ACTIVITY"

  }
}
