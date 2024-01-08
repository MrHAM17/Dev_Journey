package com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.ImagePickerFragmentDialog
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsQuickVideoBinding
import com.tikpikshortvideosocialnetworking.app.modules.postscamera.ui.PostsCameraActivity
import com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.`data`.viewmodel.PostsQuickVideoVM
import kotlin.String
import kotlin.Unit

class PostsQuickVideoActivity :
    BaseActivity<ActivityPostsQuickVideoBinding>(R.layout.activity_posts_quick_video) {
  private val viewModel: PostsQuickVideoVM by viewModels<PostsQuickVideoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsQuickVideoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.txtCamera.setOnClickListener {
      val destIntent = PostsCameraActivity.getIntent(this, null)
      startActivity(destIntent)
    }
    binding.imageCategoriesRepost.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

    }
    binding.imageCategoriesXClose.setOnClickListener {
      finish()
    }
  }

  companion object {
    const val TAG: String = "POSTS_QUICK_VIDEO_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PostsQuickVideoActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
