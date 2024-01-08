package com.tikpikshortvideosocialnetworking.app.modules.postseditpage.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsEditPageBinding
import com.tikpikshortvideosocialnetworking.app.modules.postseditpage.`data`.viewmodel.PostsEditPageVM
import kotlin.String
import kotlin.Unit

class PostsEditPageActivity :
    BaseActivity<ActivityPostsEditPageBinding>(R.layout.activity_posts_edit_page) {
  private val viewModel: PostsEditPageVM by viewModels<PostsEditPageVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsEditPageVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageArrowDown.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "POSTS_EDIT_PAGE_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PostsEditPageActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
