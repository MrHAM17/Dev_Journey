package com.tikpikshortvideosocialnetworking.app.modules.poststemplates.ui

import android.content.Context
import android.content.Intent
import android.os.Bundle
import androidx.activity.viewModels
import com.tikpikshortvideosocialnetworking.app.R
import com.tikpikshortvideosocialnetworking.app.appcomponents.base.BaseActivity
import com.tikpikshortvideosocialnetworking.app.databinding.ActivityPostsTemplatesBinding
import com.tikpikshortvideosocialnetworking.app.modules.postsaddsoundstabcontainer.ui.PostsAddSoundsTabContainerActivity
import com.tikpikshortvideosocialnetworking.app.modules.poststemplates.`data`.viewmodel.PostsTemplatesVM
import kotlin.String
import kotlin.Unit

class PostsTemplatesActivity :
    BaseActivity<ActivityPostsTemplatesBinding>(R.layout.activity_posts_templates) {
  private val viewModel: PostsTemplatesVM by viewModels<PostsTemplatesVM>()

  override fun onInitialized(): Unit {
    viewModel.navArguments = intent.extras?.getBundle("bundle")
    binding.postsTemplatesVM = viewModel
  }

  override fun setUpClicks(): Unit {
    binding.btnUploadPhotos.setOnClickListener {
      val destIntent = PostsAddSoundsTabContainerActivity.getIntent(this, null)
      startActivity(destIntent)
    }
  }

  companion object {
    const val TAG: String = "POSTS_TEMPLATES_ACTIVITY"


    fun getIntent(context: Context, bundle: Bundle?): Intent {
      val destIntent = Intent(context, PostsTemplatesActivity::class.java)
      destIntent.putExtra("bundle", bundle)
      return destIntent
    }
  }
}
