package com.tikpikshortvideosocialnetworking.app.modules.postsquickphoto.ui

import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.appcomponents.views.ImagePickerFragmentDialog
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsQuickPhotoBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsquickphoto.`data`.viewmodel.PostsQuickPhotoVM
import com.tikpikshortvideosocialnetworking.app.modules.postsquickvideo.ui.PostsQuickVideoActivity
import kotlin.String
import kotlin.Unit

class PostsQuickPhotoActivity :
    BaseActivity<ActivityPostsQuickPhotoBinding>(R.layout.activity_posts_quick_photo) {
  private val viewModel: PostsQuickPhotoVM by viewModels<PostsQuickPhotoVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsQuickPhotoVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.imageCategoriesXClose.setOnClickListener {
      finish()
    }
    binding.imageCategoriesRepost.setOnClickListener {
      ImagePickerFragmentDialog().show(supportFragmentManager)
      { path ->//TODO HANDLE DATA
      }

          }
      binding.btnVideo.setOnClickListener {
        val destIntent = PostsQuickVideoActivity.getIntent(this, null)
        startActivity(destIntent)
      }
    }

    companion object {
      const val TAG: String = "POSTS_QUICK_PHOTO_ACTIVITY"

    }
  }
